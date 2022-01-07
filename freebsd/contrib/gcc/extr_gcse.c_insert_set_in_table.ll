; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_set_in_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_insert_set_in_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32, %struct.expr**, i32 }
%struct.expr = type { %struct.occr*, i32*, %struct.expr*, i64, i32 }
%struct.occr = type { i8*, i64, %struct.occr* }

@SET = common dso_local global i64 0, align 8
@bytes_used = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.hash_table*)* @insert_set_in_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_set_in_table(i8* %0, i8* %1, %struct.hash_table* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hash_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.expr*, align 8
  %10 = alloca %struct.expr*, align 8
  %11 = alloca %struct.occr*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hash_table* %2, %struct.hash_table** %6, align 8
  store %struct.expr* null, %struct.expr** %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @GET_CODE(i8* %12)
  %14 = load i64, i64* @SET, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @SET_DEST(i8* %17)
  %19 = call i64 @REG_P(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @gcc_assert(i32 %23)
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @SET_DEST(i8* %25)
  %27 = call i32 @REGNO(i32 %26)
  %28 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %29 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hash_set(i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %33 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %32, i32 0, i32 1
  %34 = load %struct.expr**, %struct.expr*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.expr*, %struct.expr** %34, i64 %36
  %38 = load %struct.expr*, %struct.expr** %37, align 8
  store %struct.expr* %38, %struct.expr** %9, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %51, %21
  %40 = load %struct.expr*, %struct.expr** %9, align 8
  %41 = icmp ne %struct.expr* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.expr*, %struct.expr** %9, align 8
  %44 = getelementptr inbounds %struct.expr, %struct.expr* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @expr_equiv_p(i32 %45, i8* %46)
  store i32 %47, i32* %7, align 4
  %48 = icmp eq i32 0, %47
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i1 [ false, %39 ], [ %48, %42 ]
  br i1 %50, label %51, label %56

51:                                               ; preds = %49
  %52 = load %struct.expr*, %struct.expr** %9, align 8
  store %struct.expr* %52, %struct.expr** %10, align 8
  %53 = load %struct.expr*, %struct.expr** %9, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 2
  %55 = load %struct.expr*, %struct.expr** %54, align 8
  store %struct.expr* %55, %struct.expr** %9, align 8
  br label %39

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %56
  %60 = call i8* @gcse_alloc(i32 40)
  %61 = bitcast i8* %60 to %struct.expr*
  store %struct.expr* %61, %struct.expr** %9, align 8
  %62 = load i32, i32* @bytes_used, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 40
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* @bytes_used, align 4
  %66 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %67 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %66, i32 0, i32 1
  %68 = load %struct.expr**, %struct.expr*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.expr*, %struct.expr** %68, i64 %70
  %72 = load %struct.expr*, %struct.expr** %71, align 8
  %73 = icmp eq %struct.expr* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %59
  %75 = load %struct.expr*, %struct.expr** %9, align 8
  %76 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %77 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %76, i32 0, i32 1
  %78 = load %struct.expr**, %struct.expr*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.expr*, %struct.expr** %78, i64 %80
  store %struct.expr* %75, %struct.expr** %81, align 8
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.expr*, %struct.expr** %9, align 8
  %84 = load %struct.expr*, %struct.expr** %10, align 8
  %85 = getelementptr inbounds %struct.expr, %struct.expr* %84, i32 0, i32 2
  store %struct.expr* %83, %struct.expr** %85, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @copy_rtx(i8* %87)
  %89 = load %struct.expr*, %struct.expr** %9, align 8
  %90 = getelementptr inbounds %struct.expr, %struct.expr* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.hash_table*, %struct.hash_table** %6, align 8
  %92 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = sext i32 %93 to i64
  %96 = load %struct.expr*, %struct.expr** %9, align 8
  %97 = getelementptr inbounds %struct.expr, %struct.expr* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.expr*, %struct.expr** %9, align 8
  %99 = getelementptr inbounds %struct.expr, %struct.expr* %98, i32 0, i32 2
  store %struct.expr* null, %struct.expr** %99, align 8
  %100 = load %struct.expr*, %struct.expr** %9, align 8
  %101 = getelementptr inbounds %struct.expr, %struct.expr* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  %102 = load %struct.expr*, %struct.expr** %9, align 8
  %103 = getelementptr inbounds %struct.expr, %struct.expr* %102, i32 0, i32 0
  store %struct.occr* null, %struct.occr** %103, align 8
  br label %104

104:                                              ; preds = %86, %56
  %105 = load %struct.expr*, %struct.expr** %9, align 8
  %106 = getelementptr inbounds %struct.expr, %struct.expr* %105, i32 0, i32 0
  %107 = load %struct.occr*, %struct.occr** %106, align 8
  store %struct.occr* %107, %struct.occr** %11, align 8
  %108 = load %struct.occr*, %struct.occr** %11, align 8
  %109 = icmp ne %struct.occr* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %104
  %111 = load %struct.occr*, %struct.occr** %11, align 8
  %112 = getelementptr inbounds %struct.occr, %struct.occr* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @BLOCK_NUM(i8* %113)
  %115 = load i8*, i8** %5, align 8
  %116 = call i64 @BLOCK_NUM(i8* %115)
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i8*, i8** %5, align 8
  %120 = load %struct.occr*, %struct.occr** %11, align 8
  %121 = getelementptr inbounds %struct.occr, %struct.occr* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %142

122:                                              ; preds = %110, %104
  %123 = call i8* @gcse_alloc(i32 24)
  %124 = bitcast i8* %123 to %struct.occr*
  store %struct.occr* %124, %struct.occr** %11, align 8
  %125 = load i32, i32* @bytes_used, align 4
  %126 = sext i32 %125 to i64
  %127 = add i64 %126, 24
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* @bytes_used, align 4
  %129 = load i8*, i8** %5, align 8
  %130 = load %struct.occr*, %struct.occr** %11, align 8
  %131 = getelementptr inbounds %struct.occr, %struct.occr* %130, i32 0, i32 0
  store i8* %129, i8** %131, align 8
  %132 = load %struct.expr*, %struct.expr** %9, align 8
  %133 = getelementptr inbounds %struct.expr, %struct.expr* %132, i32 0, i32 0
  %134 = load %struct.occr*, %struct.occr** %133, align 8
  %135 = load %struct.occr*, %struct.occr** %11, align 8
  %136 = getelementptr inbounds %struct.occr, %struct.occr* %135, i32 0, i32 2
  store %struct.occr* %134, %struct.occr** %136, align 8
  %137 = load %struct.occr*, %struct.occr** %11, align 8
  %138 = getelementptr inbounds %struct.occr, %struct.occr* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.occr*, %struct.occr** %11, align 8
  %140 = load %struct.expr*, %struct.expr** %9, align 8
  %141 = getelementptr inbounds %struct.expr, %struct.expr* %140, i32 0, i32 0
  store %struct.occr* %139, %struct.occr** %141, align 8
  br label %142

142:                                              ; preds = %122, %118
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i8*) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SET_DEST(i8*) #1

declare dso_local i32 @hash_set(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @expr_equiv_p(i32, i8*) #1

declare dso_local i8* @gcse_alloc(i32) #1

declare dso_local i32 @copy_rtx(i8*) #1

declare dso_local i64 @BLOCK_NUM(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
