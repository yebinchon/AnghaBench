; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_argtypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_argtypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stab_handle = type { i32 }
%struct.stab_demangle_info = type { i32, %struct.stab_demangle_typestring*, i32*, i32, i64, %struct.stab_handle*, i8* }
%struct.stab_demangle_typestring = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no argument types in mangled string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.stab_handle*, i8*, i32*, i32)* @stab_demangle_argtypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stab_demangle_argtypes(i8* %0, %struct.stab_handle* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stab_handle*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stab_demangle_info, align 8
  store i8* %0, i8** %7, align 8
  store %struct.stab_handle* %1, %struct.stab_handle** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 95
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 90
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @stab_demangle_v3_argtypes(i8* %25, %struct.stab_handle* %26, i8* %27, i32* %28)
  store i32* %29, i32** %6, align 8
  br label %89

30:                                               ; preds = %18, %5
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load %struct.stab_handle*, %struct.stab_handle** %8, align 8
  %34 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 5
  store %struct.stab_handle* %33, %struct.stab_handle** %34, align 8
  %35 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 0
  store i32 10, i32* %38, align 8
  %39 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = call i64 @xmalloc(i32 %43)
  %45 = inttoptr i64 %44 to %struct.stab_demangle_typestring*
  %46 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 1
  store %struct.stab_demangle_typestring* %45, %struct.stab_demangle_typestring** %46, align 8
  %47 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @stab_demangle_prefix(%struct.stab_demangle_info* %12, i8** %9, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %30
  br label %80

52:                                               ; preds = %30
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = call i32 @stab_demangle_signature(%struct.stab_demangle_info* %12, i8** %9)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %80

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %52
  %63 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 1
  %64 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %63, align 8
  %65 = call i32 @free(%struct.stab_demangle_typestring* %64)
  %66 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 1
  store %struct.stab_demangle_typestring* null, %struct.stab_demangle_typestring** %66, align 8
  %67 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @stderr, align 4
  %72 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %73 = call i32 @fprintf(i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %6, align 8
  br label %89

80:                                               ; preds = %60, %51
  %81 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 1
  %82 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %81, align 8
  %83 = icmp ne %struct.stab_demangle_typestring* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.stab_demangle_info, %struct.stab_demangle_info* %12, i32 0, i32 1
  %86 = load %struct.stab_demangle_typestring*, %struct.stab_demangle_typestring** %85, align 8
  %87 = call i32 @free(%struct.stab_demangle_typestring* %86)
  br label %88

88:                                               ; preds = %84, %80
  store i32* null, i32** %6, align 8
  br label %89

89:                                               ; preds = %88, %74, %24
  %90 = load i32*, i32** %6, align 8
  ret i32* %90
}

declare dso_local i32* @stab_demangle_v3_argtypes(i8*, %struct.stab_handle*, i8*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @stab_demangle_prefix(%struct.stab_demangle_info*, i8**, i32) #1

declare dso_local i32 @stab_demangle_signature(%struct.stab_demangle_info*, i8**) #1

declare dso_local i32 @free(%struct.stab_demangle_typestring*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
