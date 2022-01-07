; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_mem_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c___sk_mem_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i64, i64, i32, i32, %struct.proto* }
%struct.proto = type { i32*, i64*, i64*, i32, i32, i64*, i32 (%struct.sock*)* }

@SK_MEM_QUANTUM = common dso_local global i32 0, align 4
@SK_MEM_RECV = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@SK_MEM_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sk_mem_schedule(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proto*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 6
  %14 = load %struct.proto*, %struct.proto** %13, align 8
  store %struct.proto* %14, %struct.proto** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sk_mem_pages(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @SK_MEM_QUANTUM, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.proto*, %struct.proto** %8, align 8
  %26 = getelementptr inbounds %struct.proto, %struct.proto* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @atomic_add_return(i32 %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.proto*, %struct.proto** %8, align 8
  %31 = getelementptr inbounds %struct.proto, %struct.proto* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %29, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %3
  %37 = load %struct.proto*, %struct.proto** %8, align 8
  %38 = getelementptr inbounds %struct.proto, %struct.proto* %37, i32 0, i32 5
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.proto*, %struct.proto** %8, align 8
  %43 = getelementptr inbounds %struct.proto, %struct.proto* %42, i32 0, i32 5
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.proto*, %struct.proto** %8, align 8
  %49 = getelementptr inbounds %struct.proto, %struct.proto* %48, i32 0, i32 5
  %50 = load i64*, i64** %49, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %41, %36
  store i32 1, i32* %4, align 4
  br label %212

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.proto*, %struct.proto** %8, align 8
  %55 = getelementptr inbounds %struct.proto, %struct.proto* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %53, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %52
  %61 = load %struct.proto*, %struct.proto** %8, align 8
  %62 = getelementptr inbounds %struct.proto, %struct.proto* %61, i32 0, i32 6
  %63 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %62, align 8
  %64 = icmp ne i32 (%struct.sock*)* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.proto*, %struct.proto** %8, align 8
  %67 = getelementptr inbounds %struct.proto, %struct.proto* %66, i32 0, i32 6
  %68 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %67, align 8
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = call i32 %68(%struct.sock* %69)
  br label %71

71:                                               ; preds = %65, %60
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.proto*, %struct.proto** %8, align 8
  %75 = getelementptr inbounds %struct.proto, %struct.proto* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %73, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %170

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SK_MEM_RECV, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.sock*, %struct.sock** %5, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 4
  %88 = call i64 @atomic_read(i32* %87)
  %89 = load %struct.proto*, %struct.proto** %8, align 8
  %90 = getelementptr inbounds %struct.proto, %struct.proto* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %88, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 1, i32* %4, align 4
  br label %212

96:                                               ; preds = %85
  br label %128

97:                                               ; preds = %81
  %98 = load %struct.sock*, %struct.sock** %5, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SOCK_STREAM, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.sock*, %struct.sock** %5, align 8
  %105 = getelementptr inbounds %struct.sock, %struct.sock* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.proto*, %struct.proto** %8, align 8
  %108 = getelementptr inbounds %struct.proto, %struct.proto* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  store i32 1, i32* %4, align 4
  br label %212

114:                                              ; preds = %103
  br label %127

115:                                              ; preds = %97
  %116 = load %struct.sock*, %struct.sock** %5, align 8
  %117 = getelementptr inbounds %struct.sock, %struct.sock* %116, i32 0, i32 5
  %118 = call i64 @atomic_read(i32* %117)
  %119 = load %struct.proto*, %struct.proto** %8, align 8
  %120 = getelementptr inbounds %struct.proto, %struct.proto* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  store i32 1, i32* %4, align 4
  br label %212

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %96
  %129 = load %struct.proto*, %struct.proto** %8, align 8
  %130 = getelementptr inbounds %struct.proto, %struct.proto* %129, i32 0, i32 5
  %131 = load i64*, i64** %130, align 8
  %132 = icmp ne i64* %131, null
  br i1 %132, label %133, label %169

133:                                              ; preds = %128
  %134 = load %struct.proto*, %struct.proto** %8, align 8
  %135 = getelementptr inbounds %struct.proto, %struct.proto* %134, i32 0, i32 5
  %136 = load i64*, i64** %135, align 8
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  br label %212

140:                                              ; preds = %133
  %141 = load %struct.proto*, %struct.proto** %8, align 8
  %142 = getelementptr inbounds %struct.proto, %struct.proto* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @percpu_counter_read_positive(i32 %143)
  store i32 %144, i32* %11, align 4
  %145 = load %struct.proto*, %struct.proto** %8, align 8
  %146 = getelementptr inbounds %struct.proto, %struct.proto* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.sock*, %struct.sock** %5, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = getelementptr inbounds %struct.sock, %struct.sock* %154, i32 0, i32 4
  %156 = call i64 @atomic_read(i32* %155)
  %157 = add nsw i64 %153, %156
  %158 = load %struct.sock*, %struct.sock** %5, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %157, %161
  %163 = trunc i64 %162 to i32
  %164 = call i32 @sk_mem_pages(i32 %163)
  %165 = mul nsw i32 %150, %164
  %166 = icmp sgt i32 %149, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %140
  store i32 1, i32* %4, align 4
  br label %212

168:                                              ; preds = %140
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %80
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* @SK_MEM_SEND, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load %struct.sock*, %struct.sock** %5, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @SOCK_STREAM, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load %struct.sock*, %struct.sock** %5, align 8
  %182 = call i32 @sk_stream_moderate_sndbuf(%struct.sock* %181)
  %183 = load %struct.sock*, %struct.sock** %5, align 8
  %184 = getelementptr inbounds %struct.sock, %struct.sock* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load %struct.sock*, %struct.sock** %5, align 8
  %190 = getelementptr inbounds %struct.sock, %struct.sock* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %188, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  store i32 1, i32* %4, align 4
  br label %212

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194, %174, %170
  %196 = load %struct.sock*, %struct.sock** %5, align 8
  %197 = load %struct.proto*, %struct.proto** %8, align 8
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @trace_sock_exceed_buf_limit(%struct.sock* %196, %struct.proto* %197, i32 %198)
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* @SK_MEM_QUANTUM, align 4
  %202 = mul nsw i32 %200, %201
  %203 = load %struct.sock*, %struct.sock** %5, align 8
  %204 = getelementptr inbounds %struct.sock, %struct.sock* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %205, %202
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.proto*, %struct.proto** %8, align 8
  %209 = getelementptr inbounds %struct.proto, %struct.proto* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @atomic_sub(i32 %207, i32 %210)
  store i32 0, i32* %4, align 4
  br label %212

212:                                              ; preds = %195, %193, %167, %139, %125, %113, %95, %51
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local i32 @sk_mem_pages(i32) #1

declare dso_local i32 @atomic_add_return(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @percpu_counter_read_positive(i32) #1

declare dso_local i32 @sk_stream_moderate_sndbuf(%struct.sock*) #1

declare dso_local i32 @trace_sock_exceed_buf_limit(%struct.sock*, %struct.proto*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
