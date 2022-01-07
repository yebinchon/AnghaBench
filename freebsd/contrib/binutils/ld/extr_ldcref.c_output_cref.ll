; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_output_cref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldcref.c_output_cref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cref_hash_entry = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"\0ACross Reference Table\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FILECOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"File\0A\00", align 1
@cref_initialized = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"No symbols\0A\00", align 1
@cref_symcount = common dso_local global i32 0, align 4
@cref_table = common dso_local global i32 0, align 4
@cref_fill_array = common dso_local global i32 0, align 4
@cref_sort_array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_cref(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cref_hash_entry**, align 8
  %5 = alloca %struct.cref_hash_entry**, align 8
  %6 = alloca %struct.cref_hash_entry**, align 8
  %7 = alloca %struct.cref_hash_entry**, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10)
  %12 = call i8* @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %8, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %22, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FILECOL, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @putc(i8 signext 32, i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %18

27:                                               ; preds = %18
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* %29)
  %31 = load i32, i32* @cref_initialized, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32*, i32** %2, align 8
  %35 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* %35)
  br label %78

37:                                               ; preds = %27
  %38 = load i32, i32* @cref_symcount, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call %struct.cref_hash_entry** @xmalloc(i32 %41)
  store %struct.cref_hash_entry** %42, %struct.cref_hash_entry*** %4, align 8
  %43 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %4, align 8
  store %struct.cref_hash_entry** %43, %struct.cref_hash_entry*** %5, align 8
  %44 = load i32, i32* @cref_fill_array, align 4
  %45 = call i32 @cref_hash_traverse(i32* @cref_table, i32 %44, %struct.cref_hash_entry*** %5)
  %46 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %5, align 8
  %47 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %4, align 8
  %48 = ptrtoint %struct.cref_hash_entry** %46 to i64
  %49 = ptrtoint %struct.cref_hash_entry** %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = load i32, i32* @cref_symcount, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %4, align 8
  %58 = load i32, i32* @cref_symcount, align 4
  %59 = load i32, i32* @cref_sort_array, align 4
  %60 = call i32 @qsort(%struct.cref_hash_entry** %57, i32 %58, i32 8, i32 %59)
  %61 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %4, align 8
  %62 = load i32, i32* @cref_symcount, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cref_hash_entry*, %struct.cref_hash_entry** %61, i64 %63
  store %struct.cref_hash_entry** %64, %struct.cref_hash_entry*** %7, align 8
  %65 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %4, align 8
  store %struct.cref_hash_entry** %65, %struct.cref_hash_entry*** %6, align 8
  br label %66

66:                                               ; preds = %75, %37
  %67 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %6, align 8
  %68 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %7, align 8
  %69 = icmp ult %struct.cref_hash_entry** %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32*, i32** %2, align 8
  %72 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %6, align 8
  %73 = load %struct.cref_hash_entry*, %struct.cref_hash_entry** %72, align 8
  %74 = call i32 @output_one_cref(i32* %71, %struct.cref_hash_entry* %73)
  br label %75

75:                                               ; preds = %70
  %76 = load %struct.cref_hash_entry**, %struct.cref_hash_entry*** %6, align 8
  %77 = getelementptr inbounds %struct.cref_hash_entry*, %struct.cref_hash_entry** %76, i32 1
  store %struct.cref_hash_entry** %77, %struct.cref_hash_entry*** %6, align 8
  br label %66

78:                                               ; preds = %33, %66
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local %struct.cref_hash_entry** @xmalloc(i32) #1

declare dso_local i32 @cref_hash_traverse(i32*, i32, %struct.cref_hash_entry***) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @qsort(%struct.cref_hash_entry**, i32, i32, i32) #1

declare dso_local i32 @output_one_cref(i32*, %struct.cref_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
