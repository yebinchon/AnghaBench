; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_map_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_exec.c_exec_map_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @exec_map_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_map_open(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  store i8* %16, i8** %17, align 16
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 1
  store i8* %18, i8** %19, align 8
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 2
  store i8* null, i8** %20, align 16
  %21 = load i32, i32* @O_WRONLY, align 4
  %22 = load i32, i32* @O_NOCTTY, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %140

27:                                               ; preds = %15
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %29 = call i64 @pipe(i32* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @close(i32 %32)
  store i32 -1, i32* %3, align 4
  br label %140

34:                                               ; preds = %27
  %35 = call i32 @vfork() #4
  store i32 %35, i32* %6, align 4
  switch i32 %35, label %110 [
    i32 -1, label %36
    i32 0, label %45
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @close(i32 %37)
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  store i32 -1, i32* %3, align 4
  br label %140

45:                                               ; preds = %34
  %46 = call i32 @vfork() #4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %108 [
    i32 -1, label %48
    i32 0, label %51
  ]

48:                                               ; preds = %45
  %49 = load i64, i64* @errno, align 8
  %50 = call i32 @exit(i64 %49) #5
  unreachable

51:                                               ; preds = %45
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STDOUT_FILENO, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STDOUT_FILENO, align 4
  %60 = call i32 @dup2(i32 %58, i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @STDERR_FILENO, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @STDERR_FILENO, align 4
  %71 = call i32 @dup2(i32 %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @close(i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @FD_SETSIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @STDOUT_FILENO, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @STDERR_FILENO, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %87, %83, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load i32, i32* @STDOUT_FILENO, align 4
  %96 = call i32 @set_nonblock(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @STDOUT_FILENO, align 4
  %100 = call i32 @close(i32 %99)
  %101 = call i32 @exit(i64 -1) #5
  unreachable

102:                                              ; preds = %94
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds [3 x i8*], [3 x i8*]* %11, i64 0, i64 0
  %105 = call i32 @execve(i8* %103, i8** %104, i32* null)
  %106 = load i64, i64* @errno, align 8
  %107 = call i32 @exit(i64 %106) #5
  unreachable

108:                                              ; preds = %45
  %109 = call i32 @exit(i64 0) #5
  unreachable

110:                                              ; preds = %34
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @close(i32 %111)
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @close(i32 %114)
  br label %116

116:                                              ; preds = %127, %110
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @waitpid(i32 %117, i32 0, i32 0)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i64, i64* @errno, align 8
  %122 = load i64, i64* @EINTR, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i64, i64* @errno, align 8
  %126 = call i32 @exit(i64 %125) #5
  unreachable

127:                                              ; preds = %120
  br label %116

128:                                              ; preds = %116
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @set_nonblock(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @close(i32 %135)
  store i32 -1, i32* %3, align 4
  br label %140

137:                                              ; preds = %128
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %137, %133, %36, %31, %26, %14
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @close(i32) #1

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i64) #3

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @set_nonblock(i32) #1

declare dso_local i32 @execve(i8*, i8**, i32*) #1

declare dso_local i64 @waitpid(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
