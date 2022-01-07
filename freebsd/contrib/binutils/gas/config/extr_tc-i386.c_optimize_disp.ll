; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_optimize_disp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_optimize_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64*, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@i = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@Disp = common dso_local global i32 0, align 4
@O_constant = common dso_local global i64 0, align 8
@Disp16 = common dso_local global i32 0, align 4
@Disp64 = common dso_local global i32 0, align 4
@Disp32 = common dso_local global i32 0, align 4
@BaseIndex = common dso_local global i32 0, align 4
@flag_code = common dso_local global i64 0, align 8
@CODE_64BIT = common dso_local global i64 0, align 8
@Disp32S = common dso_local global i32 0, align 4
@Disp8 = common dso_local global i32 0, align 4
@BFD_RELOC_386_TLS_DESC_CALL = common dso_local global i64 0, align 8
@BFD_RELOC_X86_64_TLSDESC_CALL = common dso_local global i64 0, align 8
@frag_now = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @optimize_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optimize_disp() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 0), align 8
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %234, %0
  %5 = load i32, i32* %1, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %1, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %235

8:                                                ; preds = %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @Disp, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %234

17:                                               ; preds = %8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 3), align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @O_constant, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %180

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 3), align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %2, align 4
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @Disp16, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %28
  %46 = load i32, i32* %2, align 4
  %47 = and i32 %46, -65536
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 65535
  %52 = xor i32 %51, 32768
  %53 = sub nsw i32 %52, 32768
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* @Disp64, align 4
  %55 = xor i32 %54, -1
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %49, %45, %28
  %63 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @Disp32, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %62
  %72 = load i32, i32* %2, align 4
  %73 = and i32 %72, 0
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, i32* %2, align 4
  store i32 %76, i32* %2, align 4
  %77 = load i32, i32* %2, align 4
  %78 = xor i32 %77, -2147483648
  %79 = sub nsw i32 %78, -2147483648
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* @Disp64, align 4
  %81 = xor i32 %80, -1
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %75, %71, %62
  %89 = load i32, i32* %2, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %88
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BaseIndex, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %91
  %101 = load i32, i32* @Disp, align 4
  %102 = xor i32 %101, -1
  %103 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %102
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 3), align 8
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %113, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 4), align 8
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 4), align 8
  br label %154

116:                                              ; preds = %91, %88
  %117 = load i64, i64* @flag_code, align 8
  %118 = load i64, i64* @CODE_64BIT, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %153

120:                                              ; preds = %116
  %121 = load i32, i32* %2, align 4
  %122 = call i64 @fits_in_signed_long(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i32, i32* @Disp64, align 4
  %126 = xor i32 %125, -1
  %127 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, %126
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @Disp32S, align 4
  %134 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %135 = load i32, i32* %1, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %133
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %124, %120
  %141 = load i32, i32* %2, align 4
  %142 = call i64 @fits_in_unsigned_long(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* @Disp32, align 4
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %144, %140
  br label %153

153:                                              ; preds = %152, %116
  br label %154

154:                                              ; preds = %153, %100
  %155 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @Disp32, align 4
  %161 = load i32, i32* @Disp32S, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @Disp16, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %159, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %154
  %168 = load i32, i32* %2, align 4
  %169 = call i64 @fits_in_signed_byte(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = load i32, i32* @Disp8, align 4
  %173 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %174 = load i32, i32* %1, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %171, %167, %154
  br label %233

180:                                              ; preds = %17
  %181 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 2), align 8
  %182 = load i32, i32* %1, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @BFD_RELOC_386_TLS_DESC_CALL, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %180
  %189 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 2), align 8
  %190 = load i32, i32* %1, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @BFD_RELOC_X86_64_TLSDESC_CALL, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %223

196:                                              ; preds = %188, %180
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %198 = call i64 @frag_more(i32 0)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** @frag_now, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 3), align 8
  %204 = load i32, i32* %1, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = load i64*, i64** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 2), align 8
  %210 = load i32, i32* %1, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %209, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @fix_new_exp(%struct.TYPE_8__* %197, i64 %202, i32 0, %struct.TYPE_9__* %208, i32 0, i64 %213)
  %215 = load i32, i32* @Disp, align 4
  %216 = xor i32 %215, -1
  %217 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %218 = load i32, i32* %1, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, %216
  store i32 %222, i32* %220, align 4
  br label %232

223:                                              ; preds = %188
  %224 = load i32, i32* @Disp64, align 4
  %225 = xor i32 %224, -1
  %226 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i, i32 0, i32 1), align 8
  %227 = load i32, i32* %1, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, %225
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %223, %196
  br label %233

233:                                              ; preds = %232, %179
  br label %234

234:                                              ; preds = %233, %8
  br label %4

235:                                              ; preds = %4
  ret void
}

declare dso_local i64 @fits_in_signed_long(i32) #1

declare dso_local i64 @fits_in_unsigned_long(i32) #1

declare dso_local i64 @fits_in_signed_byte(i32) #1

declare dso_local i32 @fix_new_exp(%struct.TYPE_8__*, i64, i32, %struct.TYPE_9__*, i32, i64) #1

declare dso_local i64 @frag_more(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
