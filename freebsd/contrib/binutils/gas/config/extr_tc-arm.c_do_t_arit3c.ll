; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_arit3c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_arit3c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@inst = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@unified_syntax = common dso_local global i64 0, align 8
@BFD_RELOC_ARM_T32_IMMEDIATE = common dso_local global i32 0, align 4
@current_it_mask = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"shift must be constant\00", align 1
@BAD_THUMB32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unshifted register required\00", align 1
@BAD_HIREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"dest must overlap one source register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_arit3c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_arit3c() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %1, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i64 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %24

19:                                               ; preds = %0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %18, %14 ], [ %23, %19 ]
  store i32 %25, i32* %2, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* @unified_syntax, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %154

32:                                               ; preds = %24
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %40 = call i8* @THUMB_OP32(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %43 = and i32 %42, -503316481
  %44 = or i32 %43, 268435456
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %45 = load i32, i32* %1, align 4
  %46 = shl i32 %45, 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %48 = or i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %49 = load i32, i32* %2, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %52 = or i32 %51, %50
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %53 = load i32, i32* @BFD_RELOC_ARM_T32_IMMEDIATE, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 3, i32 0), align 8
  br label %153

54:                                               ; preds = %32
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %56 = call i32 @THUMB_SETS_FLAGS(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* @current_it_mask, align 8
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %66

62:                                               ; preds = %54
  %63 = load i64, i64* @current_it_mask, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* %1, align 4
  %68 = icmp sgt i32 %67, 7
  br i1 %68, label %75, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp sgt i32 %70, 7
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = icmp sgt i32 %73, 7
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %69, %66
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %77
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 1), align 4
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %90
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %99 = call i8* @THUMB_OP16(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %103 = or i32 %102, %101
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %104 = load i32, i32* %3, align 4
  %105 = shl i32 %104, 3
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %107 = or i32 %106, %105
  store i32 %107, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %216

108:                                              ; preds = %93
  %109 = load i32, i32* %1, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %108
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %114 = call i8* @THUMB_OP16(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %118 = or i32 %117, %116
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %119 = load i32, i32* %2, align 4
  %120 = shl i32 %119, 3
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %122 = or i32 %121, %120
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %216

123:                                              ; preds = %108
  br label %124

124:                                              ; preds = %123, %90
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %130, %124
  %137 = phi i1 [ false, %124 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %140 = call i32 @constraint(i32 %138, i32 %139)
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %142 = call i8* @THUMB_OP32(i32 %141)
  %143 = ptrtoint i8* %142 to i32
  store i32 %143, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %144 = load i32, i32* %1, align 4
  %145 = shl i32 %144, 8
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %147 = or i32 %146, %145
  store i32 %147, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %148 = load i32, i32* %2, align 4
  %149 = shl i32 %148, 16
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %151 = or i32 %150, %149
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %152 = call i32 @encode_thumb32_shifted_operand(i32 2)
  br label %153

153:                                              ; preds = %136, %38
  br label %216

154:                                              ; preds = %24
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %156 = call i32 @THUMB_SETS_FLAGS(i32 %155)
  %157 = load i32, i32* @BAD_THUMB32, align 4
  %158 = call i32 @constraint(i32 %156, i32 %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i64 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 2
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %164, %154
  %171 = phi i1 [ true, %154 ], [ %169, %164 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %174 = call i32 @constraint(i32 %172, i32 %173)
  %175 = load i32, i32* %1, align 4
  %176 = icmp sgt i32 %175, 7
  br i1 %176, label %183, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %2, align 4
  %179 = icmp sgt i32 %178, 7
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %3, align 4
  %182 = icmp sgt i32 %181, 7
  br label %183

183:                                              ; preds = %180, %177, %170
  %184 = phi i1 [ true, %177 ], [ true, %170 ], [ %182, %180 ]
  %185 = zext i1 %184 to i32
  %186 = load i32, i32* @BAD_HIREG, align 4
  %187 = call i32 @constraint(i32 %185, i32 %186)
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %189 = call i8* @THUMB_OP16(i32 %188)
  %190 = ptrtoint i8* %189 to i32
  store i32 %190, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %191 = load i32, i32* %1, align 4
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %193 = or i32 %192, %191
  store i32 %193, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %194 = load i32, i32* %1, align 4
  %195 = load i32, i32* %2, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %183
  %198 = load i32, i32* %3, align 4
  %199 = shl i32 %198, 3
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %201 = or i32 %200, %199
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %215

202:                                              ; preds = %183
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* %3, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load i32, i32* %2, align 4
  %208 = shl i32 %207, 3
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %210 = or i32 %209, %208
  store i32 %210, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %214

211:                                              ; preds = %202
  %212 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %213 = call i32 @constraint(i32 1, i32 %212)
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %197
  br label %216

216:                                              ; preds = %97, %112, %215, %153
  ret void
}

declare dso_local i8* @THUMB_OP32(i32) #1

declare dso_local i32 @THUMB_SETS_FLAGS(i32) #1

declare dso_local i8* @THUMB_OP16(i32) #1

declare dso_local i32 @constraint(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @encode_thumb32_shifted_operand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
