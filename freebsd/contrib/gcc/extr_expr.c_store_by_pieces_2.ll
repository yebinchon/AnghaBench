; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_by_pieces_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_store_by_pieces_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.store_by_pieces = type { i32, i32, i64, i64, i32, i32, i32 (i32, i32, i32)*, i32, i64 }

@HAVE_PRE_DECREMENT = common dso_local global i64 0, align 8
@HAVE_POST_INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32 (i32, ...)*, i32, %struct.store_by_pieces*)* @store_by_pieces_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_by_pieces_2(i32 (i32, ...)* %0, i32 %1, %struct.store_by_pieces* %2) #0 {
  %4 = alloca i32 (i32, ...)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.store_by_pieces*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 (i32, ...)* %0, i32 (i32, ...)** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.store_by_pieces* %2, %struct.store_by_pieces** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %115, %3
  %13 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %14 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %121

18:                                               ; preds = %12
  %19 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %20 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %26 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %31 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %36 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %40 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %43 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @adjust_automodify_address(i32 %37, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %55

46:                                               ; preds = %29
  %47 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %48 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %52 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @adjust_address(i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %46, %34
  %56 = load i64, i64* @HAVE_PRE_DECREMENT, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %60 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %65 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 0, %67
  %69 = call i32 @GEN_INT(i32 %68)
  %70 = call i32 @gen_add2_insn(i32 %66, i32 %69)
  %71 = call i32 @emit_insn(i32 %70)
  br label %72

72:                                               ; preds = %63, %58, %55
  %73 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %74 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %73, i32 0, i32 6
  %75 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %74, align 8
  %76 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %77 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %80 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 %75(i32 %78, i32 %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32 (i32, ...)*, i32 (i32, ...)** %4, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, ...) %84(i32 %85, i32 %86)
  %88 = call i32 @emit_insn(i32 %87)
  %89 = load i64, i64* @HAVE_POST_INCREMENT, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %72
  %92 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %93 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %98 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @GEN_INT(i32 %100)
  %102 = call i32 @gen_add2_insn(i32 %99, i32 %101)
  %103 = call i32 @emit_insn(i32 %102)
  br label %104

104:                                              ; preds = %96, %91, %72
  %105 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %106 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %112 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.store_by_pieces*, %struct.store_by_pieces** %6, align 8
  %118 = getelementptr inbounds %struct.store_by_pieces, %struct.store_by_pieces* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %12

121:                                              ; preds = %12
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @adjust_automodify_address(i32, i32, i32, i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_add2_insn(i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
