; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_alloc_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_alloc_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid2_hc_tx_sock = type { i32, %struct.ccid2_seq**, %struct.ccid2_seq*, %struct.ccid2_seq* }
%struct.ccid2_seq = type { %struct.ccid2_seq*, %struct.ccid2_seq* }

@ENOMEM = common dso_local global i32 0, align 4
@CCID2_SEQBUF_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid2_hc_tx_sock*)* @ccid2_hc_tx_alloc_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %4 = alloca %struct.ccid2_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.ccid2_hc_tx_sock* %0, %struct.ccid2_hc_tx_sock** %3, align 8
  %6 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %7 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = icmp uge i64 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %124

14:                                               ; preds = %1
  %15 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = trunc i64 %17 to i32
  %19 = call i32 (...) @gfp_any()
  %20 = call %struct.ccid2_seq* @kmalloc(i32 %18, i32 %19)
  store %struct.ccid2_seq* %20, %struct.ccid2_seq** %4, align 8
  %21 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %22 = icmp eq %struct.ccid2_seq* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %27
  %33 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %33, i64 %36
  %38 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %38, i64 %40
  %42 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %41, i32 0, i32 0
  store %struct.ccid2_seq* %37, %struct.ccid2_seq** %42, align 8
  %43 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %43, i64 %45
  %47 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %47, i64 %50
  %52 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %51, i32 0, i32 1
  store %struct.ccid2_seq* %46, %struct.ccid2_seq** %52, align 8
  br label %53

53:                                               ; preds = %32
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %58 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %59 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %58, i64 %61
  %63 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %62, i32 0, i32 0
  store %struct.ccid2_seq* %57, %struct.ccid2_seq** %63, align 8
  %64 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %65 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %64, i64 %67
  %69 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %70 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %69, i32 0, i32 1
  store %struct.ccid2_seq* %68, %struct.ccid2_seq** %70, align 8
  %71 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %72 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %56
  %76 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %77 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %78 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %77, i32 0, i32 2
  store %struct.ccid2_seq* %76, %struct.ccid2_seq** %78, align 8
  %79 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %80 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %79, i32 0, i32 3
  store %struct.ccid2_seq* %76, %struct.ccid2_seq** %80, align 8
  br label %110

81:                                               ; preds = %56
  %82 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %83 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %84 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %83, i32 0, i32 3
  %85 = load %struct.ccid2_seq*, %struct.ccid2_seq** %84, align 8
  %86 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %85, i32 0, i32 0
  store %struct.ccid2_seq* %82, %struct.ccid2_seq** %86, align 8
  %87 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %88 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %87, i32 0, i32 3
  %89 = load %struct.ccid2_seq*, %struct.ccid2_seq** %88, align 8
  %90 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %91 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %90, i32 0, i32 1
  store %struct.ccid2_seq* %89, %struct.ccid2_seq** %91, align 8
  %92 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %93 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %92, i64 %95
  %97 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %98 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %97, i32 0, i32 2
  %99 = load %struct.ccid2_seq*, %struct.ccid2_seq** %98, align 8
  %100 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %99, i32 0, i32 1
  store %struct.ccid2_seq* %96, %struct.ccid2_seq** %100, align 8
  %101 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %102 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %101, i32 0, i32 2
  %103 = load %struct.ccid2_seq*, %struct.ccid2_seq** %102, align 8
  %104 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %105 = load i32, i32* @CCID2_SEQBUF_LEN, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %104, i64 %107
  %109 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %108, i32 0, i32 0
  store %struct.ccid2_seq* %103, %struct.ccid2_seq** %109, align 8
  br label %110

110:                                              ; preds = %81, %75
  %111 = load %struct.ccid2_seq*, %struct.ccid2_seq** %4, align 8
  %112 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %113 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %112, i32 0, i32 1
  %114 = load %struct.ccid2_seq**, %struct.ccid2_seq*** %113, align 8
  %115 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %116 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ccid2_seq*, %struct.ccid2_seq** %114, i64 %118
  store %struct.ccid2_seq* %111, %struct.ccid2_seq** %119, align 8
  %120 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %3, align 8
  %121 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %110, %23, %11
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.ccid2_seq* @kmalloc(i32, i32) #1

declare dso_local i32 @gfp_any(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
