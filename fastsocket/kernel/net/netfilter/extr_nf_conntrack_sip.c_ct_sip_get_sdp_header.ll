; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_sdp_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_ct_sip_get_sdp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sip_header = type { i32, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32, i64, i32 }
%struct.nf_conn.0 = type opaque
%struct.nf_conn = type { i32 }

@ct_sdp_hdrs = common dso_local global %struct.sip_header* null, align 8
@SDP_HDR_UNSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_sip_get_sdp_header(%struct.nf_conn* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.sip_header*, align 8
  %19 = alloca %struct.sip_header*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load %struct.sip_header*, %struct.sip_header** @ct_sdp_hdrs, align 8
  %24 = load i32, i32* %14, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %23, i64 %25
  store %struct.sip_header* %26, %struct.sip_header** %18, align 8
  %27 = load %struct.sip_header*, %struct.sip_header** @ct_sdp_hdrs, align 8
  %28 = load i32, i32* %15, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %27, i64 %29
  store %struct.sip_header* %30, %struct.sip_header** %19, align 8
  %31 = load i8*, i8** %11, align 8
  store i8* %31, i8** %20, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8* %35, i8** %21, align 8
  store i32 0, i32* %22, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %11, align 8
  br label %40

40:                                               ; preds = %192, %8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %21, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %195

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 13
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %11, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %192

55:                                               ; preds = %49, %44
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %21, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %195

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 -1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 13
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i8*, i8** %11, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 10
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load i8*, i8** %11, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %11, align 8
  %75 = load i8*, i8** %21, align 8
  %76 = icmp uge i8* %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %195

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %67, %61
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @SDP_HDR_UNSPEC, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load i8*, i8** %21, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %90 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp sge i64 %88, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %83
  %95 = load i8*, i8** %11, align 8
  %96 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %97 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sip_header*, %struct.sip_header** %19, align 8
  %100 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @strnicmp(i8* %95, i32 %98, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %195

105:                                              ; preds = %94, %83, %79
  %106 = load i8*, i8** %21, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %112 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp sge i64 %110, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %105
  %117 = load i8*, i8** %11, align 8
  %118 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %119 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %122 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @strnicmp(i8* %117, i32 %120, i32 %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %116
  %127 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %128 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %11, align 8
  br label %134

133:                                              ; preds = %116, %105
  br label %192

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %134
  %136 = load i8*, i8** %11, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %16, align 8
  store i32 %141, i32* %142, align 4
  %143 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %144 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %135
  %148 = load i8*, i8** %11, align 8
  %149 = load i8*, i8** %21, align 8
  %150 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %151 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %154 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i8* @ct_sdp_header_search(i8* %148, i8* %149, i64 %152, i32 %155)
  store i8* %156, i8** %11, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %147
  store i32 -1, i32* %9, align 4
  br label %196

160:                                              ; preds = %147
  %161 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %162 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %11, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %11, align 8
  br label %167

167:                                              ; preds = %160, %135
  %168 = load %struct.sip_header*, %struct.sip_header** %18, align 8
  %169 = getelementptr inbounds %struct.sip_header, %struct.sip_header* %168, i32 0, i32 1
  %170 = load i32 (%struct.nf_conn.0*, i8*, i8*, i32*)*, i32 (%struct.nf_conn.0*, i8*, i8*, i32*)** %169, align 8
  %171 = load %struct.nf_conn*, %struct.nf_conn** %10, align 8
  %172 = bitcast %struct.nf_conn* %171 to %struct.nf_conn.0*
  %173 = load i8*, i8** %11, align 8
  %174 = load i8*, i8** %21, align 8
  %175 = call i32 %170(%struct.nf_conn.0* %172, i8* %173, i8* %174, i32* %22)
  %176 = load i32*, i32** %17, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32*, i32** %17, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %167
  store i32 -1, i32* %9, align 4
  br label %196

181:                                              ; preds = %167
  %182 = load i8*, i8** %11, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = trunc i64 %189 to i32
  %191 = load i32*, i32** %16, align 8
  store i32 %190, i32* %191, align 4
  store i32 1, i32* %9, align 4
  br label %196

192:                                              ; preds = %133, %54
  %193 = load i8*, i8** %11, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %11, align 8
  br label %40

195:                                              ; preds = %104, %77, %60, %40
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %195, %181, %180, %159
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i64 @strnicmp(i8*, i32, i32) #1

declare dso_local i8* @ct_sdp_header_search(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
