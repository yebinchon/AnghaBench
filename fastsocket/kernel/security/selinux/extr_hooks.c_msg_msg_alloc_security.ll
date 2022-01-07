; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_msg_msg_alloc_security.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_msg_msg_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_msg = type { %struct.msg_security_struct* }
%struct.msg_security_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECINITSID_UNLABELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_msg*)* @msg_msg_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_msg_alloc_security(%struct.msg_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg_msg*, align 8
  %4 = alloca %struct.msg_security_struct*, align 8
  store %struct.msg_msg* %0, %struct.msg_msg** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.msg_security_struct* @kzalloc(i32 4, i32 %5)
  store %struct.msg_security_struct* %6, %struct.msg_security_struct** %4, align 8
  %7 = load %struct.msg_security_struct*, %struct.msg_security_struct** %4, align 8
  %8 = icmp ne %struct.msg_security_struct* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @SECINITSID_UNLABELED, align 4
  %14 = load %struct.msg_security_struct*, %struct.msg_security_struct** %4, align 8
  %15 = getelementptr inbounds %struct.msg_security_struct, %struct.msg_security_struct* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.msg_security_struct*, %struct.msg_security_struct** %4, align 8
  %17 = load %struct.msg_msg*, %struct.msg_msg** %3, align 8
  %18 = getelementptr inbounds %struct.msg_msg, %struct.msg_msg* %17, i32 0, i32 0
  store %struct.msg_security_struct* %16, %struct.msg_security_struct** %18, align 8
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.msg_security_struct* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
