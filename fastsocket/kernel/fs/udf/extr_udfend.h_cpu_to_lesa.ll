; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_udfend.h_cpu_to_lesa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_udfend.h_cpu_to_lesa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.short_ad = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i8* } (i8*, i8*)* @cpu_to_lesa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i8* } @cpu_to_lesa(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.short_ad, align 8
  %4 = alloca %struct.short_ad, align 8
  %5 = bitcast %struct.short_ad* %4 to { i8*, i8* }*
  %6 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %5, i32 0, i32 0
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %5, i32 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %4, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @cpu_to_le32(i8* %9)
  %11 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %3, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %4, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @cpu_to_le32(i8* %13)
  %15 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %3, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = bitcast %struct.short_ad* %3 to { i8*, i8* }*
  %17 = load { i8*, i8* }, { i8*, i8* }* %16, align 8
  ret { i8*, i8* } %17
}

declare dso_local i8* @cpu_to_le32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
