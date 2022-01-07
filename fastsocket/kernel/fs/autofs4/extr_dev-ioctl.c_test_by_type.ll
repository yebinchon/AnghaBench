; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_test_by_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_test_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.autofs_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i8*)* @test_by_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_by_type(%struct.path* %0, i8* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.autofs_info*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.autofs_info* @autofs4_dentry_ino(i32 %8)
  store %struct.autofs_info* %9, %struct.autofs_info** %5, align 8
  %10 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %11 = icmp ne %struct.autofs_info* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %14 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %12, %2
  %24 = phi i1 [ false, %2 ], [ %22, %12 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
