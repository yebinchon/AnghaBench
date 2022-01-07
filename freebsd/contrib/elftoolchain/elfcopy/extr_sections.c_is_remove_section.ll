; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_is_remove_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_is_remove_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64, i32 }
%struct.sec_action = type { i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@STRIP_ALL = common dso_local global i64 0, align 8
@SYMOP_KEEP = common dso_local global i32 0, align 4
@STRIP_DWO = common dso_local global i64 0, align 8
@STRIP_NONDWO = common dso_local global i64 0, align 8
@STRIP_DEBUG = common dso_local global i64 0, align 8
@STRIP_UNNEEDED = common dso_local global i64 0, align 8
@DISCARD_LOCAL = common dso_local global i32 0, align 4
@STRIP_NONDEBUG = common dso_local global i64 0, align 8
@SEC_REMOVE = common dso_local global i32 0, align 4
@SEC_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_remove_section(%struct.elfcopy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elfcopy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sec_action*, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %143

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15, %11
  %20 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %21 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STRIP_ALL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %27 = load i32, i32* @SYMOP_KEEP, align 4
  %28 = call i32* @lookup_symop_list(%struct.elfcopy* %26, i32* null, i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %143

31:                                               ; preds = %25, %19
  store i32 0, i32* %3, align 4
  br label %143

32:                                               ; preds = %15
  %33 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %34 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @STRIP_DWO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @is_dwo_section(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %143

43:                                               ; preds = %38, %32
  %44 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %45 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @STRIP_NONDWO, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @is_dwo_section(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %143

54:                                               ; preds = %49, %43
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @is_debug_section(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %60 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @STRIP_ALL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %66 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @STRIP_DEBUG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %83, label %70

70:                                               ; preds = %64
  %71 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %72 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @STRIP_UNNEEDED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %78 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DISCARD_LOCAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %70, %64, %58
  store i32 1, i32* %3, align 4
  br label %143

84:                                               ; preds = %76
  %85 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %86 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @STRIP_NONDEBUG, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %143

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %54
  %93 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %94 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SEC_REMOVE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %101 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SEC_COPY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %142

106:                                              ; preds = %99, %92
  %107 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call %struct.sec_action* @lookup_sec_act(%struct.elfcopy* %107, i8* %108, i32 0)
  store %struct.sec_action* %109, %struct.sec_action** %6, align 8
  %110 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %111 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @SEC_REMOVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = load %struct.sec_action*, %struct.sec_action** %6, align 8
  %118 = icmp ne %struct.sec_action* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.sec_action*, %struct.sec_action** %6, align 8
  %121 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 1, i32* %3, align 4
  br label %143

125:                                              ; preds = %119, %116, %106
  %126 = load %struct.elfcopy*, %struct.elfcopy** %4, align 8
  %127 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SEC_COPY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load %struct.sec_action*, %struct.sec_action** %6, align 8
  %134 = icmp eq %struct.sec_action* %133, null
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.sec_action*, %struct.sec_action** %6, align 8
  %137 = getelementptr inbounds %struct.sec_action, %struct.sec_action* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %135, %132
  store i32 1, i32* %3, align 4
  br label %143

141:                                              ; preds = %135, %125
  br label %142

142:                                              ; preds = %141, %99
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %140, %124, %90, %83, %53, %42, %31, %30, %10
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @lookup_symop_list(%struct.elfcopy*, i32*, i32) #1

declare dso_local i64 @is_dwo_section(i8*) #1

declare dso_local i64 @is_debug_section(i8*) #1

declare dso_local %struct.sec_action* @lookup_sec_act(%struct.elfcopy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
