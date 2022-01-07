; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_read_reference.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_read_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, i32, %struct.string_list* }
%struct.symbol = type { i32 }

@SYM_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"override\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_reference(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.symbol*, align 8
  store i32* %0, i32** %2, align 8
  br label %9

9:                                                ; preds = %73, %39, %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @feof(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %89

14:                                               ; preds = %9
  store %struct.string_list* null, %struct.string_list** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call %struct.string_list* @read_node(i32* %15)
  store %struct.string_list* %16, %struct.string_list** %4, align 8
  %17 = load %struct.string_list*, %struct.string_list** %4, align 8
  %18 = icmp ne %struct.string_list* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.string_list*, %struct.string_list** %4, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SYM_NORMAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.string_list*, %struct.string_list** %4, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  %32 = load %struct.string_list*, %struct.string_list** %4, align 8
  %33 = call i32 @free_node(%struct.string_list* %32)
  %34 = load i32*, i32** %2, align 8
  %35 = call %struct.string_list* @read_node(i32* %34)
  store %struct.string_list* %35, %struct.string_list** %4, align 8
  br label %36

36:                                               ; preds = %31, %25, %19, %14
  %37 = load %struct.string_list*, %struct.string_list** %4, align 8
  %38 = icmp ne %struct.string_list* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %9

40:                                               ; preds = %36
  %41 = load i32*, i32** %2, align 8
  %42 = call %struct.string_list* @read_node(i32* %41)
  store %struct.string_list* %42, %struct.string_list** %5, align 8
  %43 = load %struct.string_list*, %struct.string_list** %5, align 8
  %44 = icmp ne %struct.string_list* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load %struct.string_list*, %struct.string_list** %5, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SYM_NORMAL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.string_list*, %struct.string_list** %5, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcmp(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  %58 = load %struct.string_list*, %struct.string_list** %5, align 8
  %59 = call i32 @free_node(%struct.string_list* %58)
  %60 = load i32*, i32** %2, align 8
  %61 = call %struct.string_list* @read_node(i32* %60)
  store %struct.string_list* %61, %struct.string_list** %5, align 8
  br label %62

62:                                               ; preds = %57, %51, %45, %40
  br label %63

63:                                               ; preds = %66, %62
  %64 = load %struct.string_list*, %struct.string_list** %5, align 8
  %65 = icmp ne %struct.string_list* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load %struct.string_list*, %struct.string_list** %3, align 8
  %68 = load %struct.string_list*, %struct.string_list** %5, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %68, i32 0, i32 2
  store %struct.string_list* %67, %struct.string_list** %69, align 8
  %70 = load %struct.string_list*, %struct.string_list** %5, align 8
  store %struct.string_list* %70, %struct.string_list** %3, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = call %struct.string_list* @read_node(i32* %71)
  store %struct.string_list* %72, %struct.string_list** %5, align 8
  br label %63

73:                                               ; preds = %63
  %74 = load %struct.string_list*, %struct.string_list** %4, align 8
  %75 = getelementptr inbounds %struct.string_list, %struct.string_list* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @xstrdup(i32 %76)
  %78 = load %struct.string_list*, %struct.string_list** %4, align 8
  %79 = getelementptr inbounds %struct.string_list, %struct.string_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.string_list*, %struct.string_list** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call %struct.symbol* @add_reference_symbol(i32 %77, i64 %80, %struct.string_list* %81, i32 %82)
  store %struct.symbol* %83, %struct.symbol** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.symbol*, %struct.symbol** %8, align 8
  %86 = getelementptr inbounds %struct.symbol, %struct.symbol* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.string_list*, %struct.string_list** %4, align 8
  %88 = call i32 @free_node(%struct.string_list* %87)
  br label %9

89:                                               ; preds = %9
  ret void
}

declare dso_local i32 @feof(i32*) #1

declare dso_local %struct.string_list* @read_node(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @free_node(%struct.string_list*) #1

declare dso_local %struct.symbol* @add_reference_symbol(i32, i64, %struct.string_list*, i32) #1

declare dso_local i32 @xstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
