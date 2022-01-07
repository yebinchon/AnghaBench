; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_base_name_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_base_name_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i32 }

@.str = private unnamed_addr constant [33 x i8] c"base type name \22%s\22 is too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@INTR_INT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"long \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8*, i8**)* @die_base_name_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @die_base_name_parse(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i8 0, i8* %14, align 1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 255
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @terminate(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %2
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @strncpy(i8* %24, i8* %25, i32 256)
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %28 = call i8* @strtok(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %77, %23
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %79

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %13, align 4
  br label %76

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %75

42:                                               ; preds = %37
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %74

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  store i8 99, i8* %14, align 1
  br label %73

56:                                               ; preds = %49
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %71

70:                                               ; preds = %63
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %147

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %60
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %41
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76
  %78 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %78, i8** %8, align 8
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* %11, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %12, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %88, %85, %82, %79
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %147

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98, %95
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %147

105:                                              ; preds = %101
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %121

106:                                              ; preds = %92
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %147

113:                                              ; preds = %109
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %120

114:                                              ; preds = %106
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %119

118:                                              ; preds = %114
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %119

119:                                              ; preds = %118, %117
  br label %120

120:                                              ; preds = %119, %113
  br label %121

121:                                              ; preds = %120, %105
  %122 = call %struct.TYPE_4__* @xcalloc(i32 12)
  store %struct.TYPE_4__* %122, %struct.TYPE_4__** %15, align 8
  %123 = load i32, i32* @INTR_INT, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i8, i8* %14, align 1
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  store i8 %129, i8* %131, align 4
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)
  %137 = load i32, i32* %9, align 4
  %138 = icmp sgt i32 %137, 1
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @snprintf(i8* %132, i32 256, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* %136, i8* %140, i8* %141)
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %144 = call i8* @xstrdup(i8* %143)
  %145 = load i8**, i8*** %5, align 8
  store i8* %144, i8** %145, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %3, align 8
  br label %147

147:                                              ; preds = %121, %112, %104, %91, %70
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %148
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @terminate(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_4__* @xcalloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
