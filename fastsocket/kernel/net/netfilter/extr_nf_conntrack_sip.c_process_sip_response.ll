; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_sip_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_sip_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_handler = type { i32 (%struct.sk_buff*, i8**, i32*, i32, i32)*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"SIP/2.0 200\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"SIP/2.0 \00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@SIP_HDR_CSEQ = common dso_local global i32 0, align 4
@sip_handlers = common dso_local global %struct.sip_handler* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*)* @process_sip_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_sip_response(%struct.sk_buff* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sip_handler*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %17, i32* %8)
  store %struct.nf_conn* %18, %struct.nf_conn** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %24, i32* %4, align 4
  br label %117

25:                                               ; preds = %3
  %26 = load i8**, i8*** %6, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = call i32 @simple_strtoul(i8* %30, i32* null, i32 10)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @NF_DROP, align 4
  store i32 %35, i32* %4, align 4
  br label %117

36:                                               ; preds = %25
  %37 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIP_HDR_CSEQ, align 4
  %43 = call i64 @ct_sip_get_header(%struct.nf_conn* %37, i8* %39, i32 0, i32 %41, i32 %42, i32* %10, i32* %11)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @NF_DROP, align 4
  store i32 %46, i32* %4, align 4
  br label %117

47:                                               ; preds = %36
  %48 = load i8**, i8*** %6, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = call i32 @simple_strtoul(i8* %52, i32* null, i32 10)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @NF_DROP, align 4
  store i32 %57, i32* %4, align 4
  br label %117

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add i32 %59, %60
  %62 = add i32 %61, 1
  store i32 %62, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %112, %58
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.sip_handler* %65)
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %115

68:                                               ; preds = %63
  %69 = load %struct.sip_handler*, %struct.sip_handler** @sip_handlers, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %69, i64 %71
  store %struct.sip_handler* %72, %struct.sip_handler** %16, align 8
  %73 = load %struct.sip_handler*, %struct.sip_handler** %16, align 8
  %74 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %73, i32 0, i32 0
  %75 = load i32 (%struct.sk_buff*, i8**, i32*, i32, i32)*, i32 (%struct.sk_buff*, i8**, i32*, i32, i32)** %74, align 8
  %76 = icmp eq i32 (%struct.sk_buff*, i8**, i32*, i32, i32)* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %112

78:                                               ; preds = %68
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.sip_handler*, %struct.sip_handler** %16, align 8
  %83 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %81, %84
  %86 = icmp ult i32 %80, %85
  br i1 %86, label %101, label %87

87:                                               ; preds = %78
  %88 = load i8**, i8*** %6, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load %struct.sip_handler*, %struct.sip_handler** %16, align 8
  %94 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sip_handler*, %struct.sip_handler** %16, align 8
  %97 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @strnicmp(i8* %92, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %87, %78
  br label %112

102:                                              ; preds = %87
  %103 = load %struct.sip_handler*, %struct.sip_handler** %16, align 8
  %104 = getelementptr inbounds %struct.sip_handler, %struct.sip_handler* %103, i32 0, i32 0
  %105 = load i32 (%struct.sk_buff*, i8**, i32*, i32, i32)*, i32 (%struct.sk_buff*, i8**, i32*, i32, i32)** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 %105(%struct.sk_buff* %106, i8** %107, i32* %108, i32 %109, i32 %110)
  store i32 %111, i32* %4, align 4
  br label %117

112:                                              ; preds = %101, %77
  %113 = load i32, i32* %15, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %15, align 4
  br label %63

115:                                              ; preds = %63
  %116 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %115, %102, %56, %45, %34, %23
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sip_handler*) #1

declare dso_local i64 @strnicmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
