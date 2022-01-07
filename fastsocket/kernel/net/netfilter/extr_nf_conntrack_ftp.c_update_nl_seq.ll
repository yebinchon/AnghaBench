; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_update_nl_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_ftp.c_update_nl_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.nf_ct_ftp_master = type { i32*, i64** }
%struct.sk_buff = type { i32 }

@NUM_SEQ_TO_REMEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, i64, %struct.nf_ct_ftp_master*, i32, %struct.sk_buff*)* @update_nl_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_nl_seq(%struct.nf_conn* %0, i64 %1, %struct.nf_ct_ftp_master* %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nf_ct_ftp_master*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nf_ct_ftp_master* %2, %struct.nf_ct_ftp_master** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %39, %5
  %14 = load i32, i32* %11, align 4
  %15 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %16 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %14, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %25 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %24, i32 0, i32 1
  %26 = load i64**, i64*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64*, i64** %26, i64 %28
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %122

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %44 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NUM_SEQ_TO_REMEMBER, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %42
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %55 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %54, i32 0, i32 1
  %56 = load i64**, i64*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %62 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i64, i64* %60, i64 %69
  store i64 %53, i64* %70, align 8
  br label %122

71:                                               ; preds = %42
  %72 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %73 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %72, i32 0, i32 1
  %74 = load i64**, i64*** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64*, i64** %74, i64 %76
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %82 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %81, i32 0, i32 1
  %83 = load i64**, i64*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64*, i64** %83, i64 %85
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @before(i64 %80, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %94

93:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %97 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %96, i32 0, i32 1
  %98 = load i64**, i64*** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64*, i64** %98, i64 %100
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @after(i64 %95, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %94
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.nf_ct_ftp_master*, %struct.nf_ct_ftp_master** %8, align 8
  %112 = getelementptr inbounds %struct.nf_ct_ftp_master, %struct.nf_ct_ftp_master* %111, i32 0, i32 1
  %113 = load i64**, i64*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64*, i64** %113, i64 %115
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  store i64 %110, i64* %120, align 8
  br label %121

121:                                              ; preds = %109, %94
  br label %122

122:                                              ; preds = %37, %121, %52
  ret void
}

declare dso_local i64 @before(i64, i64) #1

declare dso_local i64 @after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
