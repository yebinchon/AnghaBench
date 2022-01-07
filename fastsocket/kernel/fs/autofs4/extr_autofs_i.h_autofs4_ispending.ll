; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_autofs_i.h_autofs4_ispending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_autofs_i.h_autofs4_ispending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.autofs_info = type { i32 }

@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @autofs4_ispending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs4_ispending(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.autofs_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %5)
  store %struct.autofs_info* %6, %struct.autofs_info** %4, align 8
  %7 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %8 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %16 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
