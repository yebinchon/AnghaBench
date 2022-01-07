; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_upr_queue_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_upr_queue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.slic_upr*, i32 }
%struct.slic_upr = type { %struct.slic_upr*, i8*, i8*, i8*, i8*, i8*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i8*, i8*, i8*, i8*, i8*)* @slic_upr_queue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_upr_queue_request(%struct.adapter* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.slic_upr*, align 8
  %15 = alloca %struct.slic_upr*, align 8
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.slic_upr* @kmalloc(i32 56, i32 %16)
  store %struct.slic_upr* %17, %struct.slic_upr** %14, align 8
  %18 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %19 = icmp ne %struct.slic_upr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %73

23:                                               ; preds = %6
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %28 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %31 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %34 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %37 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %40 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %43 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %45 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %44, i32 0, i32 0
  store %struct.slic_upr* null, %struct.slic_upr** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %8, align 8
  %47 = getelementptr inbounds %struct.adapter, %struct.adapter* %46, i32 0, i32 0
  %48 = load %struct.slic_upr*, %struct.slic_upr** %47, align 8
  %49 = icmp ne %struct.slic_upr* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %23
  %51 = load %struct.adapter*, %struct.adapter** %8, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 0
  %53 = load %struct.slic_upr*, %struct.slic_upr** %52, align 8
  store %struct.slic_upr* %53, %struct.slic_upr** %15, align 8
  br label %54

54:                                               ; preds = %59, %50
  %55 = load %struct.slic_upr*, %struct.slic_upr** %15, align 8
  %56 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %55, i32 0, i32 0
  %57 = load %struct.slic_upr*, %struct.slic_upr** %56, align 8
  %58 = icmp ne %struct.slic_upr* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.slic_upr*, %struct.slic_upr** %15, align 8
  %61 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %60, i32 0, i32 0
  %62 = load %struct.slic_upr*, %struct.slic_upr** %61, align 8
  store %struct.slic_upr* %62, %struct.slic_upr** %15, align 8
  br label %54

63:                                               ; preds = %54
  %64 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %65 = load %struct.slic_upr*, %struct.slic_upr** %15, align 8
  %66 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %65, i32 0, i32 0
  store %struct.slic_upr* %64, %struct.slic_upr** %66, align 8
  br label %71

67:                                               ; preds = %23
  %68 = load %struct.slic_upr*, %struct.slic_upr** %14, align 8
  %69 = load %struct.adapter*, %struct.adapter** %8, align 8
  %70 = getelementptr inbounds %struct.adapter, %struct.adapter* %69, i32 0, i32 0
  store %struct.slic_upr* %68, %struct.slic_upr** %70, align 8
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %20
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.slic_upr* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
