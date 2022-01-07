; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_build_post_landing_pads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_build_post_landing_pads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 (...)* }
%struct.eh_region = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.eh_region* }
%struct.TYPE_8__ = type { i32*, i32*, %struct.eh_region* }

@cfun = common dso_local global %struct.TYPE_14__* null, align 8
@eh_region = common dso_local global i32 0, align 4
@EQ = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@targetm = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @build_post_landing_pads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_post_landing_pads() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eh_region*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.eh_region*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %185, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %188

15:                                               ; preds = %12
  %16 = load i32, i32* @eh_region, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cfun, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call %struct.eh_region* @VEC_index(i32 %16, i32 %21, i32 %22)
  store %struct.eh_region* %23, %struct.eh_region** %2, align 8
  %24 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %25 = icmp ne %struct.eh_region* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %28 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %15
  br label %185

33:                                               ; preds = %26
  %34 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %35 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %182 [
    i32 128, label %37
    i32 133, label %131
    i32 131, label %175
    i32 130, label %175
    i32 132, label %181
    i32 129, label %181
  ]

37:                                               ; preds = %33
  %38 = call i8* (...) @gen_label_rtx()
  %39 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %40 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = call i32 (...) @start_sequence()
  %42 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %43 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @emit_label(i8* %44)
  %46 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %47 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.eh_region*, %struct.eh_region** %49, align 8
  store %struct.eh_region* %50, %struct.eh_region** %4, align 8
  br label %51

51:                                               ; preds = %104, %37
  %52 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %53 = icmp ne %struct.eh_region* %52, null
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %56 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %63 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @emit_jump(i8* %64)
  br label %103

66:                                               ; preds = %54
  %67 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %68 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %5, align 8
  %72 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %73 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %80, %66
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %102

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cfun, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @TREE_VALUE(i32* %86)
  %88 = call i32 @tree_low_cst(i32 %87, i32 0)
  %89 = call i32 @GEN_INT(i32 %88)
  %90 = load i32, i32* @EQ, align 4
  %91 = load i32, i32* @NULL_RTX, align 4
  %92 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @targetm, i32 0, i32 0), align 8
  %93 = call i32 (...) %92()
  %94 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %95 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @emit_cmp_and_jump_insns(i32 %85, i32 %89, i32 %90, i32 %91, i32 %93, i32 0, i8* %96)
  %98 = load i32*, i32** %5, align 8
  %99 = call i32* @TREE_CHAIN(i32* %98)
  store i32* %99, i32** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = call i32* @TREE_CHAIN(i32* %100)
  store i32* %101, i32** %6, align 8
  br label %77

102:                                              ; preds = %77
  br label %103

103:                                              ; preds = %102, %61
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.eh_region*, %struct.eh_region** %4, align 8
  %106 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load %struct.eh_region*, %struct.eh_region** %108, align 8
  store %struct.eh_region* %109, %struct.eh_region** %4, align 8
  br label %51

110:                                              ; preds = %51
  %111 = load i32, i32* @VOIDmode, align 4
  %112 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %113 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @gen_rtx_RESX(i32 %111, i32 %114)
  %116 = call i8* @emit_jump_insn(i32 %115)
  %117 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %118 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %117, i32 0, i32 4
  store i8* %116, i8** %118, align 8
  %119 = call i32 (...) @emit_barrier()
  %120 = call i32 (...) @get_insns()
  store i32 %120, i32* %3, align 4
  %121 = call i32 (...) @end_sequence()
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %124 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.eh_region*, %struct.eh_region** %126, align 8
  %128 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @emit_to_new_bb_before(i32 %122, i8* %129)
  br label %184

131:                                              ; preds = %33
  %132 = call i8* (...) @gen_label_rtx()
  %133 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %134 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = call i32 (...) @start_sequence()
  %136 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %137 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %136, i32 0, i32 3
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @emit_label(i8* %138)
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** @cfun, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %146 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @GEN_INT(i32 %149)
  %151 = load i32, i32* @EQ, align 4
  %152 = load i32, i32* @NULL_RTX, align 4
  %153 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @targetm, i32 0, i32 0), align 8
  %154 = call i32 (...) %153()
  %155 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %156 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @emit_cmp_and_jump_insns(i32 %144, i32 %150, i32 %151, i32 %152, i32 %154, i32 0, i8* %157)
  %159 = load i32, i32* @VOIDmode, align 4
  %160 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %161 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @gen_rtx_RESX(i32 %159, i32 %162)
  %164 = call i8* @emit_jump_insn(i32 %163)
  %165 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %166 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = call i32 (...) @emit_barrier()
  %168 = call i32 (...) @get_insns()
  store i32 %168, i32* %3, align 4
  %169 = call i32 (...) @end_sequence()
  %170 = load i32, i32* %3, align 4
  %171 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %172 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @emit_to_new_bb_before(i32 %170, i8* %173)
  br label %184

175:                                              ; preds = %33, %33
  %176 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %177 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %180 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %179, i32 0, i32 3
  store i8* %178, i8** %180, align 8
  br label %184

181:                                              ; preds = %33, %33
  br label %184

182:                                              ; preds = %33
  %183 = call i32 (...) @gcc_unreachable()
  br label %184

184:                                              ; preds = %182, %181, %175, %131, %110
  br label %185

185:                                              ; preds = %184, %32
  %186 = load i32, i32* %1, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %1, align 4
  br label %12

188:                                              ; preds = %12
  ret void
}

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i8* @gen_label_rtx(...) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_label(i8*) #1

declare dso_local i32 @emit_jump(i8*) #1

declare dso_local i32 @emit_cmp_and_jump_insns(i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TREE_VALUE(i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i8* @emit_jump_insn(i32) #1

declare dso_local i32 @gen_rtx_RESX(i32, i32) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @emit_to_new_bb_before(i32, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
