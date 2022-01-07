; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machines__create_guest_kernel_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_symbol.c_machines__create_guest_kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64, i64 }
%struct.rb_root = type { i32 }
%struct.dirent = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DEFAULT_GUEST_KERNEL_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"invalid directory (%s). Skipping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s/%s/proc/kallsyms\00", align 1
@R_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't access file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machines__create_guest_kernel_maps(%struct.rb_root* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dirent**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.dirent** null, %struct.dirent*** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @PATH_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 3), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 2), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 1), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %19, %1
  %26 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %27 = load i64, i64* @DEFAULT_GUEST_KERNEL_ID, align 8
  %28 = call i32 @machines__create_kernel_maps(%struct.rb_root* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %121

32:                                               ; preds = %29
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %34 = call i32 @scandir(i8* %33, %struct.dirent*** %5, i32* null, i32* null)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %123

40:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %114, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %117

45:                                               ; preds = %41
  %46 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dirent*, %struct.dirent** %46, i64 %48
  %50 = load %struct.dirent*, %struct.dirent** %49, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @isdigit(i8 signext %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %114

58:                                               ; preds = %45
  %59 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dirent*, %struct.dirent** %59, i64 %61
  %63 = load %struct.dirent*, %struct.dirent** %62, align 8
  %64 = getelementptr inbounds %struct.dirent, %struct.dirent* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strtol(i8* %65, i8** %11, i32 10)
  store i64 %66, i64* %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %58
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.dirent*, %struct.dirent** %73, i64 %75
  %77 = load %struct.dirent*, %struct.dirent** %76, align 8
  %78 = getelementptr inbounds %struct.dirent, %struct.dirent* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = icmp eq i8* %72, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %71
  %82 = load i64, i64* @errno, align 8
  %83 = load i64, i64* @ERANGE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81, %71, %58
  %86 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.dirent*, %struct.dirent** %86, i64 %88
  %90 = load %struct.dirent*, %struct.dirent** %89, align 8
  %91 = getelementptr inbounds %struct.dirent, %struct.dirent* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %92)
  br label %114

94:                                               ; preds = %81
  %95 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %96 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dirent*, %struct.dirent** %96, i64 %98
  %100 = load %struct.dirent*, %struct.dirent** %99, align 8
  %101 = getelementptr inbounds %struct.dirent, %struct.dirent* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %102)
  %104 = load i32, i32* @R_OK, align 4
  %105 = call i32 @access(i8* %16, i32 %104)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %94
  %109 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  br label %118

110:                                              ; preds = %94
  %111 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @machines__create_kernel_maps(%struct.rb_root* %111, i64 %112)
  br label %114

114:                                              ; preds = %110, %85, %57
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %41

117:                                              ; preds = %41
  br label %118

118:                                              ; preds = %117, %108
  %119 = load %struct.dirent**, %struct.dirent*** %5, align 8
  %120 = call i32 @free(%struct.dirent** %119)
  br label %121

121:                                              ; preds = %118, %29
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %123

123:                                              ; preds = %121, %37
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @machines__create_kernel_maps(%struct.rb_root*, i64) #2

declare dso_local i32 @scandir(i8*, %struct.dirent***, i32*, i32*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @access(i8*, i32) #2

declare dso_local i32 @free(%struct.dirent**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
