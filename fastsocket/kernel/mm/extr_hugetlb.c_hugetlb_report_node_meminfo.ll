; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_report_node_meminfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_hugetlb_report_node_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32*, i32*, i32* }

@default_hstate = common dso_local global %struct.hstate zeroinitializer, align 8
@.str = private unnamed_addr constant [88 x i8] c"Node %d HugePages_Total: %5u\0ANode %d HugePages_Free:  %5u\0ANode %d HugePages_Surp:  %5u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hugetlb_report_node_meminfo(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hstate*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store %struct.hstate* @default_hstate, %struct.hstate** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hstate*, %struct.hstate** %5, align 8
  %9 = getelementptr inbounds %struct.hstate, %struct.hstate* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.hstate*, %struct.hstate** %5, align 8
  %17 = getelementptr inbounds %struct.hstate, %struct.hstate* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.hstate*, %struct.hstate** %5, align 8
  %25 = getelementptr inbounds %struct.hstate, %struct.hstate* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %14, i32 %15, i32 %22, i32 %23, i32 %30)
  ret i32 %31
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
