; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_ras.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_process_ras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"nf_ct_ras: RAS message %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, %struct.TYPE_3__*)* @process_ras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_ras(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %95 [
    i32 134, label %15
    i32 135, label %23
    i32 129, label %31
    i32 130, label %39
    i32 128, label %47
    i32 136, label %55
    i32 137, label %63
    i32 131, label %71
    i32 132, label %79
    i32 133, label %87
  ]

15:                                               ; preds = %5
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i8**, i8*** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 10
  %22 = call i32 @process_grq(%struct.sk_buff* %16, %struct.nf_conn* %17, i32 %18, i8** %19, i32* %21)
  store i32 %22, i32* %6, align 4
  br label %101

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i8**, i8*** %10, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 9
  %30 = call i32 @process_gcf(%struct.sk_buff* %24, %struct.nf_conn* %25, i32 %26, i8** %27, i32* %29)
  store i32 %30, i32* %6, align 4
  br label %101

31:                                               ; preds = %5
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8**, i8*** %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 8
  %38 = call i32 @process_rrq(%struct.sk_buff* %32, %struct.nf_conn* %33, i32 %34, i8** %35, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %101

39:                                               ; preds = %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i8**, i8*** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  %46 = call i32 @process_rcf(%struct.sk_buff* %40, %struct.nf_conn* %41, i32 %42, i8** %43, i32* %45)
  store i32 %46, i32* %6, align 4
  br label %101

47:                                               ; preds = %5
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8**, i8*** %10, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  %54 = call i32 @process_urq(%struct.sk_buff* %48, %struct.nf_conn* %49, i32 %50, i8** %51, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %101

55:                                               ; preds = %5
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i8**, i8*** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = call i32 @process_arq(%struct.sk_buff* %56, %struct.nf_conn* %57, i32 %58, i8** %59, i32* %61)
  store i32 %62, i32* %6, align 4
  br label %101

63:                                               ; preds = %5
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i8**, i8*** %10, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  %70 = call i32 @process_acf(%struct.sk_buff* %64, %struct.nf_conn* %65, i32 %66, i8** %67, i32* %69)
  store i32 %70, i32* %6, align 4
  br label %101

71:                                               ; preds = %5
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i8**, i8*** %10, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = call i32 @process_lrq(%struct.sk_buff* %72, %struct.nf_conn* %73, i32 %74, i8** %75, i32* %77)
  store i32 %78, i32* %6, align 4
  br label %101

79:                                               ; preds = %5
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i8**, i8*** %10, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = call i32 @process_lcf(%struct.sk_buff* %80, %struct.nf_conn* %81, i32 %82, i8** %83, i32* %85)
  store i32 %86, i32* %6, align 4
  br label %101

87:                                               ; preds = %5
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i8**, i8*** %10, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = call i32 @process_irr(%struct.sk_buff* %88, %struct.nf_conn* %89, i32 %90, i8** %91, i32* %93)
  store i32 %94, i32* %6, align 4
  br label %101

95:                                               ; preds = %5
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %87, %79, %71, %63, %55, %47, %39, %31, %23, %15
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @process_grq(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_gcf(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_rrq(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_rcf(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_urq(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_arq(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_acf(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_lrq(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_lcf(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @process_irr(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
