; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_advance_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_advance_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { i64, i32, i32, i32, i32, i32 }
%struct.o2net_msg = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"receiving\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@O2NET_MAX_PAYLOAD_BYTES = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"at page_off %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_sock_container*)* @o2net_advance_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_advance_rx(%struct.o2net_sock_container* %0) #0 {
  %2 = alloca %struct.o2net_sock_container*, align 8
  %3 = alloca %struct.o2net_msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.o2net_sock_container* %0, %struct.o2net_sock_container** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %8 = call i32 (%struct.o2net_sock_container*, i8*, ...) @sclog(%struct.o2net_sock_container* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %10 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %9, i32 0, i32 5
  %11 = call i32 @do_gettimeofday(i32* %10)
  %12 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %13 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %76

19:                                               ; preds = %1
  %20 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %21 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %27 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @page_address(i32 %28)
  %30 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %31 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %29, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %36 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = sub i64 4, %38
  store i64 %39, i64* %6, align 8
  %40 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %41 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @o2net_recv_tcp_msg(i32 %42, i8* %43, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %51 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %25
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %57 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %59, 4
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %63 = call i32 @o2net_check_handshake(%struct.o2net_sock_container* %62)
  %64 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %65 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @EPROTO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %61
  br label %75

75:                                               ; preds = %74, %55
  br label %230

76:                                               ; preds = %1
  %77 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %78 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %80, 4
  br i1 %81, label %82, label %138

82:                                               ; preds = %76
  %83 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %84 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @page_address(i32 %85)
  %87 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %88 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %86, i64 %90
  store i8* %91, i8** %5, align 8
  %92 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %93 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = sub i64 4, %95
  store i64 %96, i64* %6, align 8
  %97 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %98 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @o2net_recv_tcp_msg(i32 %99, i8* %100, i64 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %82
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %108 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %112 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %114, 4
  br i1 %115, label %116, label %132

116:                                              ; preds = %105
  %117 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %118 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @page_address(i32 %119)
  %121 = bitcast i8* %120 to %struct.o2net_msg*
  store %struct.o2net_msg* %121, %struct.o2net_msg** %3, align 8
  %122 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %123 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be16_to_cpu(i32 %124)
  %126 = load i32, i32* @O2NET_MAX_PAYLOAD_BYTES, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %116
  %129 = load i32, i32* @EOVERFLOW, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %128, %116
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %82
  %134 = load i32, i32* %4, align 4
  %135 = icmp sle i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %230

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137, %76
  %139 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %140 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = icmp ult i64 %142, 4
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %230

145:                                              ; preds = %138
  %146 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %147 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @page_address(i32 %148)
  %150 = bitcast i8* %149 to %struct.o2net_msg*
  store %struct.o2net_msg* %150, %struct.o2net_msg** %3, align 8
  %151 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %152 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %153 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @msglog(%struct.o2net_msg* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %154)
  %156 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %157 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = sub i64 %159, 4
  %161 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %162 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @be16_to_cpu(i32 %163)
  %165 = sext i32 %164 to i64
  %166 = icmp ult i64 %160, %165
  br i1 %166, label %167, label %207

167:                                              ; preds = %145
  %168 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %169 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @page_address(i32 %170)
  %172 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %173 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = getelementptr i8, i8* %171, i64 %175
  store i8* %176, i8** %5, align 8
  %177 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %178 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @be16_to_cpu(i32 %179)
  %181 = sext i32 %180 to i64
  %182 = add i64 4, %181
  %183 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %184 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = sub i64 %182, %186
  store i64 %187, i64* %6, align 8
  %188 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %189 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = load i8*, i8** %5, align 8
  %192 = load i64, i64* %6, align 8
  %193 = call i32 @o2net_recv_tcp_msg(i32 %190, i8* %191, i64 %192)
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %167
  %197 = load i32, i32* %4, align 4
  %198 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %199 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %167
  %203 = load i32, i32* %4, align 4
  %204 = icmp sle i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  br label %230

206:                                              ; preds = %202
  br label %207

207:                                              ; preds = %206, %145
  %208 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %209 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = sub i64 %211, 4
  %213 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %214 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @be16_to_cpu(i32 %215)
  %217 = sext i32 %216 to i64
  %218 = icmp eq i64 %212, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %207
  %220 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %221 = load %struct.o2net_msg*, %struct.o2net_msg** %3, align 8
  %222 = call i32 @o2net_process_message(%struct.o2net_sock_container* %220, %struct.o2net_msg* %221)
  store i32 %222, i32* %4, align 4
  %223 = load i32, i32* %4, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %219
  store i32 1, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %219
  %227 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %228 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %227, i32 0, i32 1
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %207
  br label %230

230:                                              ; preds = %229, %205, %144, %136, %75
  %231 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %232 = load i32, i32* %4, align 4
  %233 = call i32 (%struct.o2net_sock_container*, i8*, ...) @sclog(%struct.o2net_sock_container* %231, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %232)
  %234 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %2, align 8
  %235 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %234, i32 0, i32 2
  %236 = call i32 @do_gettimeofday(i32* %235)
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*, ...) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @o2net_recv_tcp_msg(i32, i8*, i64) #1

declare dso_local i32 @o2net_check_handshake(%struct.o2net_sock_container*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @msglog(%struct.o2net_msg*, i8*, i32) #1

declare dso_local i32 @o2net_process_message(%struct.o2net_sock_container*, %struct.o2net_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
