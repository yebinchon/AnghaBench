; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_user_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_key.c_key_user_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_user = type { i32, i32, i32 }

@key_user_lock = common dso_local global i32 0, align 4
@key_user_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @key_user_put(%struct.key_user* %0) #0 {
  %2 = alloca %struct.key_user*, align 8
  store %struct.key_user* %0, %struct.key_user** %2, align 8
  %3 = load %struct.key_user*, %struct.key_user** %2, align 8
  %4 = getelementptr inbounds %struct.key_user, %struct.key_user* %3, i32 0, i32 2
  %5 = call i64 @atomic_dec_and_lock(i32* %4, i32* @key_user_lock)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.key_user*, %struct.key_user** %2, align 8
  %9 = getelementptr inbounds %struct.key_user, %struct.key_user* %8, i32 0, i32 1
  %10 = call i32 @rb_erase(i32* %9, i32* @key_user_tree)
  %11 = call i32 @spin_unlock(i32* @key_user_lock)
  %12 = load %struct.key_user*, %struct.key_user** %2, align 8
  %13 = getelementptr inbounds %struct.key_user, %struct.key_user* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @put_user_ns(i32 %14)
  %16 = load %struct.key_user*, %struct.key_user** %2, align 8
  %17 = call i32 @kfree(%struct.key_user* %16)
  br label %18

18:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @kfree(%struct.key_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
