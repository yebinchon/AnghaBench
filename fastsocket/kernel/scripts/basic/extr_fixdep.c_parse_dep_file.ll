; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_parse_dep_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/basic/extr_fixdep.c_parse_dep_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fixdep: parse error\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"deps_%s := \\\0A\00", align 1
@target = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"include/linux/autoconf.h\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"arch/um/include/uml-config.h\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".ver\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"  %s \\\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"\0A%s: $(deps_%s)\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"$(deps_%s):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @parse_dep_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_dep_file(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8* %13, i8** %6, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 58)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %2
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i8* %17, i8* %27, i32 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %17, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** @target, align 8
  %42 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8* %44, i8** %5, align 8
  %45 = call i32 (...) @clear_config()
  br label %46

46:                                               ; preds = %136, %26
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %139

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %74, %50
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 92
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br label %70

70:                                               ; preds = %65, %60, %55
  %71 = phi i1 [ true, %60 ], [ true, %55 ], [ %69, %65 ]
  br label %72

72:                                               ; preds = %70, %51
  %73 = phi i1 [ false, %51 ], [ %71, %70 ]
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  br label %51

77:                                               ; preds = %72
  %78 = load i8*, i8** %5, align 8
  store i8* %78, i8** %7, align 8
  br label %79

79:                                               ; preds = %90, %77
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ult i8* %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 32
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i1 [ false, %79 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  br label %79

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %101, %97
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 -1
  store i8* %100, i8** %7, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = load i8, i8* %102, align 1
  %104 = call i32 @isalnum(i8 signext %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %98, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %7, align 8
  br label %110

110:                                              ; preds = %107, %93
  %111 = load i8*, i8** %5, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memcpy(i8* %17, i8* %111, i32 %117)
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %5, align 8
  %121 = ptrtoint i8* %119 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = getelementptr inbounds i8, i8* %17, i64 %123
  store i8 0, i8* %124, align 1
  %125 = call i64 @strrcmp(i8* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %110
  %128 = call i64 @strrcmp(i8* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = call i64 @strrcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %135 = call i32 @do_config_file(i8* %17)
  br label %136

136:                                              ; preds = %133, %130, %127, %110
  %137 = load i8*, i8** %7, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  store i8* %138, i8** %5, align 8
  br label %46

139:                                              ; preds = %46
  %140 = load i8*, i8** @target, align 8
  %141 = load i8*, i8** @target, align 8
  %142 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %140, i8* %141)
  %143 = load i8*, i8** @target, align 8
  %144 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %143)
  %145 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %145)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @clear_config(...) #2

declare dso_local i32 @isalnum(i8 signext) #2

declare dso_local i64 @strrcmp(i8*, i8*) #2

declare dso_local i32 @do_config_file(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
