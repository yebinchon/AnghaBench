; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_copy_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_copy_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@frame_pointer_needed = common dso_local global i64 0, align 8
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i64* null, align 8
@global_regs = common dso_local global i64* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@VOIDmode = common dso_local global i64 0, align 8
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@INVALID_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.value_data*)* @copy_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_value(i32 %0, i32 %1, %struct.value_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.value_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.value_data* %2, %struct.value_data** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @REGNO(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @REGNO(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %215

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %215

25:                                               ; preds = %20
  %26 = load i64, i64* @frame_pointer_needed, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @HARD_FRAME_POINTER_REGNUM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %215

33:                                               ; preds = %28, %25
  %34 = load i64*, i64** @fixed_regs, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i64*, i64** @global_regs, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %33
  br label %215

48:                                               ; preds = %40
  %49 = load i32**, i32*** @hard_regno_nregs, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @GET_MODE(i32 %54)
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  %58 = load i32**, i32*** @hard_regno_nregs, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @GET_MODE(i32 %63)
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %48
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add i32 %72, %73
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %86, label %76

76:                                               ; preds = %70, %48
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %82, %83
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %70
  br label %215

87:                                               ; preds = %80, %76
  %88 = load %struct.value_data*, %struct.value_data** %6, align 8
  %89 = getelementptr inbounds %struct.value_data, %struct.value_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VOIDmode, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %87
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.value_data*, %struct.value_data** %6, align 8
  %101 = getelementptr inbounds %struct.value_data, %struct.value_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.value_data*, %struct.value_data** %6, align 8
  %109 = call i32 @set_value_regno(i32 %99, i64 %107, %struct.value_data* %108)
  br label %168

110:                                              ; preds = %87
  %111 = load i32, i32* %10, align 4
  %112 = load i32**, i32*** @hard_regno_nregs, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.value_data*, %struct.value_data** %6, align 8
  %118 = getelementptr inbounds %struct.value_data, %struct.value_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %116, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ult i32 %111, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %110
  %129 = load %struct.value_data*, %struct.value_data** %6, align 8
  %130 = getelementptr inbounds %struct.value_data, %struct.value_data* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @GET_MODE_SIZE(i64 %136)
  %138 = load i64, i64* @UNITS_PER_WORD, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %128
  %141 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %147

143:                                              ; preds = %128
  %144 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %140
  br label %215

147:                                              ; preds = %143, %140, %110
  %148 = load i32, i32* %10, align 4
  %149 = load i32**, i32*** @hard_regno_nregs, align 8
  %150 = load i32, i32* %8, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.value_data*, %struct.value_data** %6, align 8
  %155 = getelementptr inbounds %struct.value_data, %struct.value_data* %154, i32 0, i32 0
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds i32, i32* %153, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ugt i32 %148, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %147
  br label %215

166:                                              ; preds = %147
  br label %167

167:                                              ; preds = %166
  br label %168

168:                                              ; preds = %167, %98
  %169 = load %struct.value_data*, %struct.value_data** %6, align 8
  %170 = getelementptr inbounds %struct.value_data, %struct.value_data* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.value_data*, %struct.value_data** %6, align 8
  %178 = getelementptr inbounds %struct.value_data, %struct.value_data* %177, i32 0, i32 0
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 2
  store i32 %176, i32* %183, align 4
  %184 = load i32, i32* %8, align 4
  store i32 %184, i32* %11, align 4
  br label %185

185:                                              ; preds = %197, %168
  %186 = load %struct.value_data*, %struct.value_data** %6, align 8
  %187 = getelementptr inbounds %struct.value_data, %struct.value_data* %186, i32 0, i32 0
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @INVALID_REGNUM, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %185
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.value_data*, %struct.value_data** %6, align 8
  %199 = getelementptr inbounds %struct.value_data, %struct.value_data* %198, i32 0, i32 0
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %11, align 4
  br label %185

206:                                              ; preds = %185
  %207 = load i32, i32* %7, align 4
  %208 = load %struct.value_data*, %struct.value_data** %6, align 8
  %209 = getelementptr inbounds %struct.value_data, %struct.value_data* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 1
  store i32 %207, i32* %214, align 8
  br label %215

215:                                              ; preds = %206, %165, %146, %86, %47, %32, %24, %19
  ret void
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @set_value_regno(i32, i64, %struct.value_data*) #1

declare dso_local i64 @GET_MODE_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
