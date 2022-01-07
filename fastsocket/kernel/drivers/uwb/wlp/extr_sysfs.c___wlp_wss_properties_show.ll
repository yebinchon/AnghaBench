; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c___wlp_wss_properties_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_sysfs.c___wlp_wss_properties_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp_wss = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" 0x%02x %u \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" 0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [129 x i8] c"\0A\0A#WSSID\0A#WSS broadcast address\0A#WSS hash\0A#WSS secure status\0A#WSS master key\0A#WSS local tag\0A#WSS local virtual EUI-48\0A#WSS name\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp_wss*, i8*, i64)* @__wlp_wss_properties_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wlp_wss_properties_show(%struct.wlp_wss* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp_wss*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wlp_wss* %0, %struct.wlp_wss** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %11 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %10, i32 0, i32 7
  %12 = call i32 @wlp_wss_uuid_print(i8* %8, i64 %9, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %17, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %16, i32 %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %29, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %35 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %34, i32 0, i32 6
  %36 = call i32 @uwb_mac_addr_print(i8* %28, i32 %33, i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = sub i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %49 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %52 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %42, i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = trunc i64 %64 to i32
  %66 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %67 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wlp_wss_key_print(i8* %60, i32 %65, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %76, %78
  %80 = trunc i64 %79 to i32
  %81 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %82 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %75, i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = sub i64 %91, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %97 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %96, i32 0, i32 1
  %98 = call i32 @uwb_mac_addr_print(i8* %90, i32 %95, i32* %97)
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i8*, i8** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i64, i64* %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 %105, %107
  %109 = trunc i64 %108 to i32
  %110 = load %struct.wlp_wss*, %struct.wlp_wss** %4, align 8
  %111 = getelementptr inbounds %struct.wlp_wss, %struct.wlp_wss* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %104, i32 %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = sub i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %119, i32 %124, i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @wlp_wss_uuid_print(i8*, i64, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @uwb_mac_addr_print(i8*, i32, i32*) #1

declare dso_local i32 @wlp_wss_key_print(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
