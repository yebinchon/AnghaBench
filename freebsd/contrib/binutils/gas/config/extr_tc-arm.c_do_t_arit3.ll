; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_arit3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_t_arit3.c"
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
@.str.2 = private unnamed_addr constant [43 x i8] c"dest and source1 must be the same register\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_t_arit3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_t_arit3() #0 {
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
  br i1 %31, label %32, label %138

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
  br label %137

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
  br i1 %92, label %93, label %108

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
  br label %188

108:                                              ; preds = %93, %90
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %114, %108
  %121 = phi i1 [ false, %108 ], [ %119, %114 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @constraint(i32 %122, i32 %123)
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %126 = call i8* @THUMB_OP32(i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %128 = load i32, i32* %1, align 4
  %129 = shl i32 %128, 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %131 = or i32 %130, %129
  store i32 %131, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %132 = load i32, i32* %2, align 4
  %133 = shl i32 %132, 16
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %135 = or i32 %134, %133
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %136 = call i32 @encode_thumb32_shifted_operand(i32 2)
  br label %137

137:                                              ; preds = %120, %38
  br label %188

138:                                              ; preds = %24
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %140 = call i32 @THUMB_SETS_FLAGS(i32 %139)
  %141 = load i32, i32* @BAD_THUMB32, align 4
  %142 = call i32 @constraint(i32 %140, i32 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 2
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %138
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 2), align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i64 2
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br label %154

154:                                              ; preds = %148, %138
  %155 = phi i1 [ true, %138 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %158 = call i32 @constraint(i32 %156, i32 %157)
  %159 = load i32, i32* %1, align 4
  %160 = icmp sgt i32 %159, 7
  br i1 %160, label %167, label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %2, align 4
  %163 = icmp sgt i32 %162, 7
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = icmp sgt i32 %165, 7
  br label %167

167:                                              ; preds = %164, %161, %154
  %168 = phi i1 [ true, %161 ], [ true, %154 ], [ %166, %164 ]
  %169 = zext i1 %168 to i32
  %170 = load i32, i32* @BAD_HIREG, align 4
  %171 = call i32 @constraint(i32 %169, i32 %170)
  %172 = load i32, i32* %1, align 4
  %173 = load i32, i32* %2, align 4
  %174 = icmp ne i32 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %177 = call i32 @constraint(i32 %175, i32 %176)
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %179 = call i8* @THUMB_OP16(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %181 = load i32, i32* %1, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %183 = or i32 %182, %181
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %184 = load i32, i32* %3, align 4
  %185 = shl i32 %184, 3
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  %187 = or i32 %186, %185
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @inst, i32 0, i32 0), align 8
  br label %188

188:                                              ; preds = %97, %167, %137
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
