; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_getopt.c_smb_getopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_getopt.c_smb_getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: the %s option requires an argument\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Unrecognized mount option %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_getopt(i8* %0, i8** %1, %struct.option* %2, i8** %3, i8** %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.option*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.option* %2, %struct.option** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  br label %19

19:                                               ; preds = %25, %7
  %20 = load i8**, i8*** %10, align 8
  %21 = call i8* @strsep(i8** %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %16, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %123

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24
  %26 = load i8*, i8** %16, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %16, align 8
  %32 = load i8**, i8*** %12, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %13, align 8
  store i8* null, i8** %33, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = call i8* @strchr(i8* %34, i8 signext 61)
  store i8* %35, i8** %17, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i8*, i8** %17, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %17, align 8
  store i8 0, i8* %38, align 1
  %40 = load i64*, i64** %15, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %17, align 8
  %44 = call i64 @simple_strtoul(i8* %43, i32* null, i32 0)
  %45 = load i64*, i64** %15, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8*, i8** %17, align 8
  %48 = load i8**, i8*** %13, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %30
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %116, %49
  %51 = load %struct.option*, %struct.option** %11, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.option, %struct.option* %51, i64 %53
  %55 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %119

58:                                               ; preds = %50
  %59 = load %struct.option*, %struct.option** %11, align 8
  %60 = load i32, i32* %18, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 %61
  %63 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @strcmp(i32* %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %115, label %68

68:                                               ; preds = %58
  %69 = load %struct.option*, %struct.option** %11, align 8
  %70 = load i32, i32* %18, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.option, %struct.option* %69, i64 %71
  %73 = getelementptr inbounds %struct.option, %struct.option* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %68
  %77 = load i8*, i8** %17, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %17, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %9, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85)
  store i32 -1, i32* %8, align 4
  br label %123

87:                                               ; preds = %79, %68
  %88 = load i64*, i64** %14, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %108

90:                                               ; preds = %87
  %91 = load %struct.option*, %struct.option** %11, align 8
  %92 = load i32, i32* %18, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.option, %struct.option* %91, i64 %93
  %95 = getelementptr inbounds %struct.option, %struct.option* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load %struct.option*, %struct.option** %11, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.option, %struct.option* %99, i64 %101
  %103 = getelementptr inbounds %struct.option, %struct.option* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %14, align 8
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, %104
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %98, %90, %87
  %109 = load %struct.option*, %struct.option** %11, align 8
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.option, %struct.option* %109, i64 %111
  %113 = getelementptr inbounds %struct.option, %struct.option* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %8, align 4
  br label %123

115:                                              ; preds = %58
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %50

119:                                              ; preds = %50
  %120 = load i8*, i8** %9, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %120, i8* %121)
  store i32 -1, i32* %8, align 4
  br label %123

123:                                              ; preds = %119, %108, %83, %23
  %124 = load i32, i32* %8, align 4
  ret i32 %124
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i32 @printk(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
