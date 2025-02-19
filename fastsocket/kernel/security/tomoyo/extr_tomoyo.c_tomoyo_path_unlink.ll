; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/tomoyo/extr_tomoyo.c_tomoyo_path_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_UNLINK_ACL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*)* @tomoyo_path_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_unlink(%struct.path* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.path, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 0
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.dentry*
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 1
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = ptrtoint %struct.dentry* %13 to i32
  store i32 %14, i32* %12, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = call i32 (...) @tomoyo_domain()
  %17 = load i32, i32* @TOMOYO_TYPE_UNLINK_ACL, align 4
  %18 = call i32 @tomoyo_check_1path_perm(i32 %16, i32 %17, %struct.path* %5)
  ret i32 %18
}

declare dso_local i32 @tomoyo_check_1path_perm(i32, i32, %struct.path*) #1

declare dso_local i32 @tomoyo_domain(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
