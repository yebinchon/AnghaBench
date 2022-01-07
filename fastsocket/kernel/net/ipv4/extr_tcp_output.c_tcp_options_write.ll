; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_options_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_output.c_tcp_options_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { %struct.TYPE_2__, %struct.tcp_sack_block*, %struct.tcp_sack_block* }
%struct.TYPE_2__ = type { i64 }
%struct.tcp_sack_block = type { i32, i32 }
%struct.tcp_out_options = type { i32, i32, i32, i32, i32, i32 }

@OPTION_MD5 = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@TCPOPT_MD5SIG = common dso_local global i32 0, align 4
@TCPOLEN_MD5SIG = common dso_local global i32 0, align 4
@TCPOPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@OPTION_TS = common dso_local global i32 0, align 4
@OPTION_SACK_ADVERTISE = common dso_local global i32 0, align 4
@TCPOPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@OPTION_WSCALE = common dso_local global i32 0, align 4
@TCPOPT_WINDOW = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@TCPOPT_SACK = common dso_local global i32 0, align 4
@TCPOLEN_SACK_BASE = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tcp_sock*, %struct.tcp_out_options*, i32**)* @tcp_options_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_options_write(i32* %0, %struct.tcp_sock* %1, %struct.tcp_out_options* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.tcp_out_options*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.tcp_sack_block*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.tcp_sock* %1, %struct.tcp_sock** %6, align 8
  store %struct.tcp_out_options* %2, %struct.tcp_out_options** %7, align 8
  store i32** %3, i32*** %8, align 8
  %11 = load i32, i32* @OPTION_MD5, align 4
  %12 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %13 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %11, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  %19 = load i32, i32* @TCPOPT_NOP, align 4
  %20 = shl i32 %19, 24
  %21 = load i32, i32* @TCPOPT_NOP, align 4
  %22 = shl i32 %21, 16
  %23 = or i32 %20, %22
  %24 = load i32, i32* @TCPOPT_MD5SIG, align 4
  %25 = shl i32 %24, 8
  %26 = or i32 %23, %25
  %27 = load i32, i32* @TCPOLEN_MD5SIG, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @htonl(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32**, i32*** %8, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32* %36, i32** %5, align 8
  br label %39

37:                                               ; preds = %4
  %38 = load i32**, i32*** %8, align 8
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %37, %18
  %40 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32, i32* @TCPOPT_MSS, align 4
  %47 = shl i32 %46, 24
  %48 = load i32, i32* @TCPOLEN_MSS, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %52 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %50, %53
  %55 = call i8* @htonl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  br label %59

59:                                               ; preds = %45, %39
  %60 = load i32, i32* @OPTION_TS, align 4
  %61 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %60, %63
  %65 = call i64 @likely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %120

67:                                               ; preds = %59
  %68 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %69 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %70 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %77 = shl i32 %76, 24
  %78 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %79 = shl i32 %78, 16
  %80 = or i32 %77, %79
  %81 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %80, %82
  %84 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %85 = or i32 %83, %84
  %86 = call i8* @htonl(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  br label %105

90:                                               ; preds = %67
  %91 = load i32, i32* @TCPOPT_NOP, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* @TCPOPT_NOP, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %92, %94
  %96 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %97 = shl i32 %96, 8
  %98 = or i32 %95, %97
  %99 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %100 = or i32 %98, %99
  %101 = call i8* @htonl(i32 %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %5, align 8
  store i32 %102, i32* %103, align 4
  br label %105

105:                                              ; preds = %90, %75
  %106 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %107 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @htonl(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %5, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %114 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @htonl(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %5, align 8
  store i32 %117, i32* %118, align 4
  br label %120

120:                                              ; preds = %105, %59
  %121 = load i32, i32* @OPTION_SACK_ADVERTISE, align 4
  %122 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %123 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i32, i32* @OPTION_TS, align 4
  %129 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %130 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  br label %135

135:                                              ; preds = %127, %120
  %136 = phi i1 [ false, %120 ], [ %134, %127 ]
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load i32, i32* @TCPOPT_NOP, align 4
  %142 = shl i32 %141, 24
  %143 = load i32, i32* @TCPOPT_NOP, align 4
  %144 = shl i32 %143, 16
  %145 = or i32 %142, %144
  %146 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %147 = shl i32 %146, 8
  %148 = or i32 %145, %147
  %149 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %150 = or i32 %148, %149
  %151 = call i8* @htonl(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %5, align 8
  store i32 %152, i32* %153, align 4
  br label %155

155:                                              ; preds = %140, %135
  %156 = load i32, i32* @OPTION_WSCALE, align 4
  %157 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %158 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %156, %159
  %161 = call i64 @unlikely(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %155
  %164 = load i32, i32* @TCPOPT_NOP, align 4
  %165 = shl i32 %164, 24
  %166 = load i32, i32* @TCPOPT_WINDOW, align 4
  %167 = shl i32 %166, 16
  %168 = or i32 %165, %167
  %169 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %170 = shl i32 %169, 8
  %171 = or i32 %168, %170
  %172 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %173 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %171, %174
  %176 = call i8* @htonl(i32 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %5, align 8
  store i32 %177, i32* %178, align 4
  br label %180

180:                                              ; preds = %163, %155
  %181 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %182 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @unlikely(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %256

186:                                              ; preds = %180
  %187 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %188 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %194 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %193, i32 0, i32 2
  %195 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %194, align 8
  br label %200

196:                                              ; preds = %186
  %197 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %198 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %197, i32 0, i32 1
  %199 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %198, align 8
  br label %200

200:                                              ; preds = %196, %192
  %201 = phi %struct.tcp_sack_block* [ %195, %192 ], [ %199, %196 ]
  store %struct.tcp_sack_block* %201, %struct.tcp_sack_block** %9, align 8
  %202 = load i32, i32* @TCPOPT_NOP, align 4
  %203 = shl i32 %202, 24
  %204 = load i32, i32* @TCPOPT_NOP, align 4
  %205 = shl i32 %204, 16
  %206 = or i32 %203, %205
  %207 = load i32, i32* @TCPOPT_SACK, align 4
  %208 = shl i32 %207, 8
  %209 = or i32 %206, %208
  %210 = load i32, i32* @TCPOLEN_SACK_BASE, align 4
  %211 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %212 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @TCPOLEN_SACK_PERBLOCK, align 4
  %215 = mul nsw i32 %213, %214
  %216 = add nsw i32 %210, %215
  %217 = or i32 %209, %216
  %218 = call i8* @htonl(i32 %217)
  %219 = ptrtoint i8* %218 to i32
  %220 = load i32*, i32** %5, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %5, align 8
  store i32 %219, i32* %220, align 4
  store i32 0, i32* %10, align 4
  br label %222

222:                                              ; preds = %249, %200
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.tcp_out_options*, %struct.tcp_out_options** %7, align 8
  %225 = getelementptr inbounds %struct.tcp_out_options, %struct.tcp_out_options* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %252

228:                                              ; preds = %222
  %229 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %229, i64 %231
  %233 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @htonl(i32 %234)
  %236 = ptrtoint i8* %235 to i32
  %237 = load i32*, i32** %5, align 8
  %238 = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %238, i32** %5, align 8
  store i32 %236, i32* %237, align 4
  %239 = load %struct.tcp_sack_block*, %struct.tcp_sack_block** %9, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %239, i64 %241
  %243 = getelementptr inbounds %struct.tcp_sack_block, %struct.tcp_sack_block* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @htonl(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i32 1
  store i32* %248, i32** %5, align 8
  store i32 %246, i32* %247, align 4
  br label %249

249:                                              ; preds = %228
  %250 = load i32, i32* %10, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %222

252:                                              ; preds = %222
  %253 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %254 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  store i64 0, i64* %255, align 8
  br label %256

256:                                              ; preds = %252, %180
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
