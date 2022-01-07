; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_print_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_lib80211_crypt_ccmp.c_lib80211_ccmp_print_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.lib80211_ccmp_data = type { i32, i32, i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [137 x i8] c"key[%d] alg=CCMP key_set=%d tx_pn=%02x%02x%02x%02x%02x%02x rx_pn=%02x%02x%02x%02x%02x%02x format_errors=%d replays=%d decrypt_errors=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @lib80211_ccmp_print_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lib80211_ccmp_print_stats(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lib80211_ccmp_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.lib80211_ccmp_data*
  store %struct.lib80211_ccmp_data* %7, %struct.lib80211_ccmp_data** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %10 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %13 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %16 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %21 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %26 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %31 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %36 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %41 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %46 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %51 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %56 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %61 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %66 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %71 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %76 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %79 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lib80211_ccmp_data*, %struct.lib80211_ccmp_data** %5, align 8
  %82 = getelementptr inbounds %struct.lib80211_ccmp_data, %struct.lib80211_ccmp_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %19, i32 %24, i32 %29, i32 %34, i32 %39, i32 %44, i32 %49, i32 %54, i32 %59, i32 %64, i32 %69, i32 %74, i32 %77, i32 %80, i32 %83)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
