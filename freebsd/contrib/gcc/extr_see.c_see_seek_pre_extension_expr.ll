; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_seek_pre_extension_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_seek_pre_extension_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_pre_extension_expr = type { i32*, i32*, i64, i8* }

@DEF_EXTENSION = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@see_pre_extension_hash = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.see_pre_extension_expr* (i8*, i32)* @see_seek_pre_extension_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.see_pre_extension_expr* @see_seek_pre_extension_expr(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.see_pre_extension_expr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.see_pre_extension_expr**, align 8
  %7 = alloca %struct.see_pre_extension_expr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @see_get_extension_reg(i8* %11, i32 1)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @DEF_EXTENSION, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @see_get_extension_data(i8* %17, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @UNKNOWN, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i8* @see_gen_normalized_extension(i8* %24, i32 %25, i32 %26)
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %16, %2
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %7, i32 0, i32 3
  store i8* %29, i8** %30, align 8
  %31 = load i32, i32* @see_pre_extension_hash, align 4
  %32 = load i32, i32* @INSERT, align 4
  %33 = call i64 @htab_find_slot(i32 %31, %struct.see_pre_extension_expr* %7, i32 %32)
  %34 = inttoptr i64 %33 to %struct.see_pre_extension_expr**
  store %struct.see_pre_extension_expr** %34, %struct.see_pre_extension_expr*** %6, align 8
  %35 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %36 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %35, align 8
  %37 = icmp eq %struct.see_pre_extension_expr* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %28
  %39 = call %struct.see_pre_extension_expr* @xmalloc(i32 32)
  %40 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  store %struct.see_pre_extension_expr* %39, %struct.see_pre_extension_expr** %40, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %43 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %42, align 8
  %44 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  %45 = load i32, i32* @see_pre_extension_hash, align 4
  %46 = call i64 @htab_elements(i32 %45)
  %47 = sub nsw i64 %46, 1
  %48 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %49 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %48, align 8
  %50 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %49, i32 0, i32 2
  store i64 %47, i64* %50, align 8
  %51 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %52 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %51, align 8
  %53 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %55 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %54, align 8
  %56 = getelementptr inbounds %struct.see_pre_extension_expr, %struct.see_pre_extension_expr* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  store %struct.see_pre_extension_expr* null, %struct.see_pre_extension_expr** %3, align 8
  br label %60

57:                                               ; preds = %28
  %58 = load %struct.see_pre_extension_expr**, %struct.see_pre_extension_expr*** %6, align 8
  %59 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %58, align 8
  store %struct.see_pre_extension_expr* %59, %struct.see_pre_extension_expr** %3, align 8
  br label %60

60:                                               ; preds = %57, %38
  %61 = load %struct.see_pre_extension_expr*, %struct.see_pre_extension_expr** %3, align 8
  ret %struct.see_pre_extension_expr* %61
}

declare dso_local i8* @see_get_extension_reg(i8*, i32) #1

declare dso_local i32 @see_get_extension_data(i8*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i8* @see_gen_normalized_extension(i8*, i32, i32) #1

declare dso_local i64 @htab_find_slot(i32, %struct.see_pre_extension_expr*, i32) #1

declare dso_local %struct.see_pre_extension_expr* @xmalloc(i32) #1

declare dso_local i64 @htab_elements(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
