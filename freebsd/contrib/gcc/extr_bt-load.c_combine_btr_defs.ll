; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_combine_btr_defs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_combine_btr_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32*, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@flag_btr_bb_exclusive = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Combining def in insn %d with def in insn %d\0A\00", align 1
@REG_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @combine_btr_defs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @combine_btr_defs(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %5, align 8
  br label %17

17:                                               ; preds = %206, %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %210

20:                                               ; preds = %17
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = icmp ne %struct.TYPE_9__* %21, %22
  br i1 %23, label %24, label %205

24:                                               ; preds = %20
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %205

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %205, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @CDI_DOMINATORS, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @dominated_by_p(i32 %35, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %205

44:                                               ; preds = %34
  %45 = call i32* @BITMAP_ALLOC(i32* null)
  store i32* %45, i32** %8, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = call i32 @btr_def_live_range(%struct.TYPE_9__* %51, i32* %10)
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @COPY_HARD_REG_SET(i32 %54, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @bitmap_copy(i32* %58, i32* %61)
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %9, align 8
  br label %66

66:                                               ; preds = %99, %53
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %103

69:                                               ; preds = %66
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* @flag_btr_bb_exclusive, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @BB_END(i32 %85)
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %95, label %88

88:                                               ; preds = %79
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @JUMP_P(i64 %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %88, %79, %69
  %96 = phi i1 [ true, %79 ], [ true, %69 ], [ %94, %88 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @augment_live_range(i32* %70, i32* %7, i32 %73, i32 %76, i32 %97)
  br label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %9, align 8
  br label %66

103:                                              ; preds = %66
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @choose_btr(i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, -1
  br i1 %107, label %108, label %202

108:                                              ; preds = %103
  %109 = load i64, i64* @dump_file, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i64, i64* @dump_file, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @INSN_UID(i32 %115)
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @INSN_UID(i32 %119)
  %121 = call i32 @fprintf(i64 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %120)
  br label %122

122:                                              ; preds = %111, %108
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %9, align 8
  br label %129

129:                                              ; preds = %132, %122
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = icmp ne %struct.TYPE_8__* %130, null
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %11, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %9, align 8
  br label %129

145:                                              ; preds = %129
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  store %struct.TYPE_8__* %148, %struct.TYPE_8__** %9, align 8
  br label %149

149:                                              ; preds = %166, %145
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %151 = icmp ne %struct.TYPE_8__* %150, null
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* @REG_DEAD, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @REGNO(i32 %162)
  %164 = call i32 @find_regno_note(i64 %158, i32 %159, i32 %163)
  %165 = call i32 @remove_note(i64 %155, i32 %164)
  br label %166

166:                                              ; preds = %152
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  store %struct.TYPE_8__* %169, %struct.TYPE_8__** %9, align 8
  br label %149

170:                                              ; preds = %149
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = call i32 @clear_btr_from_live_range(%struct.TYPE_9__* %171)
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %174, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @bitmap_copy(i32* %177, i32* %178)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %170
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  store i32 1, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %185, %170
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @COPY_HARD_REG_SET(i32 %195, i32 %196)
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @delete_insn(i32 %200)
  br label %202

202:                                              ; preds = %193, %103
  %203 = load i32*, i32** %8, align 8
  %204 = call i32 @BITMAP_FREE(i32* %203)
  br label %205

205:                                              ; preds = %202, %34, %29, %24, %20
  br label %206

206:                                              ; preds = %205
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 7
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %208, align 8
  store %struct.TYPE_9__* %209, %struct.TYPE_9__** %5, align 8
  br label %17

210:                                              ; preds = %17
  ret void
}

declare dso_local i64 @dominated_by_p(i32, i32, i32) #1

declare dso_local i32* @BITMAP_ALLOC(i32*) #1

declare dso_local i32 @btr_def_live_range(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @COPY_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @bitmap_copy(i32*, i32*) #1

declare dso_local i32 @augment_live_range(i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i32 @JUMP_P(i64) #1

declare dso_local i32 @choose_btr(i32) #1

declare dso_local i32 @fprintf(i64, i8*, i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @remove_note(i64, i32) #1

declare dso_local i32 @find_regno_note(i64, i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @clear_btr_from_live_range(%struct.TYPE_9__*) #1

declare dso_local i32 @delete_insn(i32) #1

declare dso_local i32 @BITMAP_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
