; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_ackvector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_ackvector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dccp_hdr = type { i32 }

@DCCPO_MAX_RESERVED = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [60 x i8] c"Invalid option - this should not happen (previous parsing)!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i8**, i8*)* @ccid2_ackvector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_ackvector(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i8** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.dccp_hdr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff* %19)
  store %struct.dccp_hdr* %20, %struct.dccp_hdr** %12, align 8
  %21 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %22 = bitcast %struct.dccp_hdr* %21 to i8*
  %23 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %24 = call i32 @dccp_hdr_len(%struct.sk_buff* %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8* %26, i8** %13, align 8
  %27 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %28 = bitcast %struct.dccp_hdr* %27 to i8*
  %29 = load %struct.dccp_hdr*, %struct.dccp_hdr** %12, align 8
  %30 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  store i8* %34, i8** %15, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp uge i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %112

48:                                               ; preds = %5
  br label %49

49:                                               ; preds = %108, %48
  %50 = load i8*, i8** %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %109

53:                                               ; preds = %49
  %54 = load i8*, i8** %14, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %14, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8* null, i8** %18, align 8
  %57 = load i8, i8* %16, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @DCCPO_MAX_RESERVED, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %53
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = icmp eq i8* %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %110

67:                                               ; preds = %62
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %14, align 8
  %70 = load i8, i8* %68, align 1
  store i8 %70, i8* %17, align 1
  %71 = load i8, i8* %17, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %110

75:                                               ; preds = %67
  %76 = load i8, i8* %17, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %77, 2
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %17, align 1
  %80 = load i8*, i8** %14, align 8
  store i8* %80, i8** %18, align 8
  %81 = load i8, i8* %17, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = icmp ugt i8* %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %110

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i8, i8* %16, align 1
  %93 = zext i8 %92 to i32
  switch i32 %93, label %108 [
    i32 129, label %94
    i32 128, label %94
  ]

94:                                               ; preds = %91, %91
  %95 = load i8*, i8** %18, align 8
  %96 = load i8**, i8*** %10, align 8
  store i8* %95, i8** %96, align 8
  %97 = load i8, i8* %17, align 1
  %98 = load i8*, i8** %11, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = add nsw i64 %100, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  br label %112

108:                                              ; preds = %91
  br label %49

109:                                              ; preds = %49
  store i32 -1, i32* %6, align 4
  br label %112

110:                                              ; preds = %89, %74, %66
  %111 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %109, %94, %47
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.dccp_hdr* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @dccp_hdr_len(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DCCP_BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
