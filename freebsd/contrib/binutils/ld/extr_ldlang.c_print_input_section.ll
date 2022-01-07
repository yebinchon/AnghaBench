; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_input_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_print_input_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_7__*, i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SECTION_NAME_MAP_LENGTH = common dso_local global i32 0, align 4
@output_bfd = common dso_local global i64 0, align 8
@print_dot = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"0x%V %W %B\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%W (size before relaxing)\0A\00", align 1
@link_info = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@print_one_symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @print_input_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_input_section(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = call i32 (...) @init_opb()
  %10 = call i32 (...) @print_space()
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 (i8*, i64, ...) @minfo(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @strlen(i64 %17)
  %19 = add nsw i32 1, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SECTION_NAME_MAP_LENGTH, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (...) @print_nl()
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %1
  br label %27

27:                                               ; preds = %31, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SECTION_NAME_MAP_LENGTH, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 (...) @print_space()
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %27

35:                                               ; preds = %27
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @output_bfd, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  store i64 %57, i64* %5, align 8
  br label %60

58:                                               ; preds = %40, %35
  %59 = load i64, i64* @print_dot, align 8
  store i64 %59, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %58, %48
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @TO_ADDR(i64 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i8*, i64, ...) @minfo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %63, i32 %66)
  %68 = load i64, i64* %3, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %60
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = load i32, i32* @SECTION_NAME_MAP_LENGTH, align 4
  %80 = add nsw i32 %79, 3
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 8
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %86, %78
  %84 = load i32, i32* %4, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 (...) @print_space()
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %4, align 4
  br label %83

90:                                               ; preds = %83
  %91 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i64, ...) @minfo(i8* %91, i64 %94)
  br label %96

96:                                               ; preds = %90, %73, %60
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @output_bfd, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %101
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 1), align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @link_info, i32 0, i32 0), align 8
  %114 = load i32, i32* @print_one_symbol, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %116 = call i32 @bfd_link_hash_traverse(i32 %113, i32 %114, %struct.TYPE_8__* %115)
  br label %120

117:                                              ; preds = %109
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %119 = call i32 @print_all_symbols(%struct.TYPE_8__* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* %3, align 8
  %123 = call i64 @TO_ADDR(i64 %122)
  %124 = add nsw i64 %121, %123
  store i64 %124, i64* @print_dot, align 8
  br label %125

125:                                              ; preds = %120, %101, %96
  ret void
}

declare dso_local i32 @init_opb(...) #1

declare dso_local i32 @print_space(...) #1

declare dso_local i32 @minfo(i8*, i64, ...) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @print_nl(...) #1

declare dso_local i64 @TO_ADDR(i64) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @bfd_link_hash_traverse(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @print_all_symbols(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
