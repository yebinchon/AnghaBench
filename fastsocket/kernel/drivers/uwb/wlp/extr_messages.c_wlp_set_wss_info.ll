; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_set_wss_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_set_wss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_attr_wss_info = type { i32, i8* }
%struct.wlp_wss = type { i32, i32, i32, i32, i32 }

@WLP_ATTR_WSS_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wlp_attr_wss_info*, %struct.wlp_wss*)* @wlp_set_wss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlp_set_wss_info(%struct.wlp_attr_wss_info* %0, %struct.wlp_wss* %1) #0 {
  %3 = alloca %struct.wlp_attr_wss_info*, align 8
  %4 = alloca %struct.wlp_wss*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.wlp_attr_wss_info* %0, %struct.wlp_attr_wss_info** %3, align 8
  store %struct.wlp_wss* %1, %struct.wlp_wss** %4, align 8
  %8 = load %struct.wlp_attr_wss_info*, %struct.wlp_attr_wss_info** %3, align 8
  %9 = getelementptr inbounds %struct.wlp_attr_wss_info, %struct.wlp_attr_wss_info* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i64 16, i64* %7, align 8
  %11 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %12 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strlen(i32 %13)
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  store i64 %16, i64* %5, align 8
  %17 = load %struct.wlp_attr_wss_info*, %struct.wlp_attr_wss_info** %3, align 8
  %18 = getelementptr inbounds %struct.wlp_attr_wss_info, %struct.wlp_attr_wss_info* %17, i32 0, i32 0
  %19 = load i32, i32* @WLP_ATTR_WSS_INFO, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @wlp_set_attr_hdr(i32* %18, i32 %19, i64 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %24 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %23, i32 0, i32 4
  %25 = call i64 @wlp_set_wssid(i8* %22, i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %30 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %33 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = call i64 @wlp_set_wss_name(i8* %28, i32 %31, i32 %35)
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %43 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @wlp_set_accept_enrl(i8* %41, i32 %44)
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr i8, i8* %48, i64 %49
  %51 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %52 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @wlp_set_wss_sec_status(i8* %50, i32 %53)
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  %60 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %61 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %60, i32 0, i32 0
  %62 = call i64 @wlp_set_wss_bcast(i8* %59, i32* %61)
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 16, %65
  ret i64 %66
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wlp_set_attr_hdr(i32*, i32, i64) #1

declare dso_local i64 @wlp_set_wssid(i8*, i32*) #1

declare dso_local i64 @wlp_set_wss_name(i8*, i32, i32) #1

declare dso_local i64 @wlp_set_accept_enrl(i8*, i32) #1

declare dso_local i64 @wlp_set_wss_sec_status(i8*, i32) #1

declare dso_local i64 @wlp_set_wss_bcast(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
