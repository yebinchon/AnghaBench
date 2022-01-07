; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_load_reboot_recovery_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_load_reboot_recovery_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_recovery_dirname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFSD: Failure reading reboot recovery data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nfsd4_load_reboot_recovery_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsd4_load_reboot_recovery_data() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @nfs4_lock_state()
  %3 = load i32, i32* @user_recovery_dirname, align 4
  %4 = call i32 @nfsd4_init_recdir(i32 %3)
  %5 = call i32 (...) @nfsd4_recdir_load()
  store i32 %5, i32* %1, align 4
  %6 = call i32 (...) @nfs4_unlock_state()
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local i32 @nfsd4_init_recdir(i32) #1

declare dso_local i32 @nfsd4_recdir_load(...) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
