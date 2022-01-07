; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_parse_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%union.nf_inet_addr = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"sip:\00", align 1
@SIP_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_parse_request(%struct.nf_conn* %0, i8* %1, i32 %2, i32* %3, i32* %4, %union.nf_inet_addr* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %union.nf_inet_addr*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %union.nf_inet_addr* %5, %union.nf_inet_addr** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i8*, i8** %10, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %17, align 8
  store i32 0, i32* %21, align 4
  %27 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = call i32 @string_len(%struct.nf_conn* %27, i8* %28, i8* %29, i32* null)
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %142

34:                                               ; preds = %7
  %35 = load i32, i32* %19, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = icmp uge i8* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %142

44:                                               ; preds = %34
  %45 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %17, align 8
  %47 = sext i32 %45 to i64
  %48 = sub i64 0, %47
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %17, align 8
  br label %50

50:                                               ; preds = %72, %44
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** %10, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %65

64:                                               ; preds = %59, %54
  store i32 -1, i32* %8, align 4
  br label %142

65:                                               ; preds = %59
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %68 = call i64 @strnicmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  br label %50

75:                                               ; preds = %70, %50
  %76 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @skp_epaddr_len(%struct.nf_conn* %76, i8* %77, i8* %78, i32* %21)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %142

82:                                               ; preds = %75
  %83 = load i32, i32* %21, align 4
  %84 = load i8*, i8** %10, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %10, align 8
  %87 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load %union.nf_inet_addr*, %union.nf_inet_addr** %14, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = call i32 @parse_addr(%struct.nf_conn* %87, i8* %88, i8** %18, %union.nf_inet_addr* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  store i32 -1, i32* %8, align 4
  br label %142

94:                                               ; preds = %82
  %95 = load i8*, i8** %18, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %94
  %99 = load i8*, i8** %18, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 58
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load i8*, i8** %18, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %18, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 @simple_strtoul(i8* %106, i8** %18, i32 10)
  store i32 %107, i32* %20, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp ult i32 %108, 1024
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %20, align 4
  %112 = icmp ugt i32 %111, 65535
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %103
  store i32 -1, i32* %8, align 4
  br label %142

114:                                              ; preds = %110
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @htons(i32 %115)
  %117 = load i32*, i32** %15, align 8
  store i32 %116, i32* %117, align 4
  br label %122

118:                                              ; preds = %98, %94
  %119 = load i32, i32* @SIP_PORT, align 4
  %120 = call i32 @htons(i32 %119)
  %121 = load i32*, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i8*, i8** %18, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = icmp eq i8* %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 0, i32* %8, align 4
  br label %142

127:                                              ; preds = %122
  %128 = load i8*, i8** %10, align 8
  %129 = load i8*, i8** %16, align 8
  %130 = ptrtoint i8* %128 to i64
  %131 = ptrtoint i8* %129 to i64
  %132 = sub i64 %130, %131
  %133 = trunc i64 %132 to i32
  %134 = load i32*, i32** %12, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %13, align 8
  store i32 %140, i32* %141, align 4
  store i32 1, i32* %8, align 4
  br label %142

142:                                              ; preds = %127, %126, %113, %93, %81, %64, %43, %33
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i32 @string_len(%struct.nf_conn*, i8*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @skp_epaddr_len(%struct.nf_conn*, i8*, i8*, i32*) #1

declare dso_local i32 @parse_addr(%struct.nf_conn*, i8*, i8**, %union.nf_inet_addr*, i8*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
