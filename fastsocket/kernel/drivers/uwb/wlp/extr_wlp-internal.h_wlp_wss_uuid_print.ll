; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-internal.h_wlp_wss_uuid_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_wlp-internal.h_wlp_wss_uuid_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_uuid = type { i32* }

@.str = private unnamed_addr constant [80 x i8] c"%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.wlp_uuid*)* @wlp_wss_uuid_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlp_wss_uuid_print(i8* %0, i64 %1, %struct.wlp_uuid* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wlp_uuid*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wlp_uuid* %2, %struct.wlp_uuid** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %11 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %16 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %21 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %26 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %31 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %36 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %41 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %46 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %51 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %56 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %61 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 10
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %66 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 11
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %71 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 12
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %76 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 13
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %81 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 14
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.wlp_uuid*, %struct.wlp_uuid** %6, align 8
  %86 = getelementptr inbounds %struct.wlp_uuid, %struct.wlp_uuid* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 15
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @scnprintf(i8* %8, i64 %9, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 %84, i32 %89)
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* %7, align 8
  ret i64 %91
}

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
