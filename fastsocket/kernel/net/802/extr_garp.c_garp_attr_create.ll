; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_attr_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/802/extr_garp.c_garp_attr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.garp_attr = type { i32, i8*, i8*, i32 }
%struct.garp_applicant = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@GARP_APPLICANT_VO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.garp_attr* (%struct.garp_applicant*, i8*, i8*, i8*)* @garp_attr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.garp_attr* @garp_attr_create(%struct.garp_applicant* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.garp_attr*, align 8
  %6 = alloca %struct.garp_applicant*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.garp_attr*, align 8
  store %struct.garp_applicant* %0, %struct.garp_applicant** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = getelementptr i8, i8* %11, i64 32
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.garp_attr* @kmalloc(i8* %12, i32 %13)
  store %struct.garp_attr* %14, %struct.garp_attr** %10, align 8
  %15 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %16 = icmp ne %struct.garp_attr* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  store %struct.garp_attr* %18, %struct.garp_attr** %5, align 8
  br label %39

19:                                               ; preds = %4
  %20 = load i32, i32* @GARP_APPLICANT_VO, align 4
  %21 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %22 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %25 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %28 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %30 = getelementptr inbounds %struct.garp_attr, %struct.garp_attr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @memcpy(i32 %31, i8* %32, i8* %33)
  %35 = load %struct.garp_applicant*, %struct.garp_applicant** %6, align 8
  %36 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  %37 = call i32 @garp_attr_insert(%struct.garp_applicant* %35, %struct.garp_attr* %36)
  %38 = load %struct.garp_attr*, %struct.garp_attr** %10, align 8
  store %struct.garp_attr* %38, %struct.garp_attr** %5, align 8
  br label %39

39:                                               ; preds = %19, %17
  %40 = load %struct.garp_attr*, %struct.garp_attr** %5, align 8
  ret %struct.garp_attr* %40
}

declare dso_local %struct.garp_attr* @kmalloc(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i8*) #1

declare dso_local i32 @garp_attr_insert(%struct.garp_applicant*, %struct.garp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
