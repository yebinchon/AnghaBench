; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_child_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/detail/extr_process.c_child_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@atf_process_stream_type_capture = common dso_local global i32 0, align 4
@atf_process_stream_type_connect = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot connect descriptor %d to %d\00", align 1
@atf_process_stream_type_inherit = common dso_local global i32 0, align 4
@atf_process_stream_type_redirect_fd = common dso_local global i32 0, align 4
@atf_process_stream_type_redirect_path = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Could not create %s\00", align 1
@UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @child_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_connect(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = call i32 @atf_process_stream_type(%struct.TYPE_5__* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @atf_process_stream_type_capture, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @safe_dup(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @atf_process_stream_type_connect, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dup2(i32 %38, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %59

46:                                               ; preds = %33
  %47 = load i32, i32* @errno, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @atf_libc_error(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %61

59:                                               ; preds = %33
  %60 = call i32 (...) @atf_no_error()
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %46
  br label %126

62:                                               ; preds = %29
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @atf_process_stream_type_inherit, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (...) @atf_no_error()
  store i32 %67, i32* %5, align 4
  br label %125

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @atf_process_stream_type_redirect_fd, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @safe_dup(i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %124

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @atf_process_stream_type_redirect_path, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %120

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @atf_fs_path_cstring(i32 %89)
  %91 = load i32, i32* @O_WRONLY, align 4
  %92 = load i32, i32* @O_CREAT, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @O_TRUNC, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @open(i32 %90, i32 %95, i32 420)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %108

99:                                               ; preds = %84
  %100 = load i32, i32* @errno, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @atf_fs_path_cstring(i32 %105)
  %107 = call i32 (i32, i8*, i32, ...) @atf_libc_error(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  store i32 %107, i32* %5, align 4
  br label %119

108:                                              ; preds = %84
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @safe_dup(i32 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i64 @atf_is_error(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @close(i32 %116)
  br label %118

118:                                              ; preds = %115, %108
  br label %119

119:                                              ; preds = %118, %99
  br label %123

120:                                              ; preds = %80
  %121 = load i32, i32* @UNREACHABLE, align 4
  %122 = call i32 (...) @atf_no_error()
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %120, %119
  br label %124

124:                                              ; preds = %123, %72
  br label %125

125:                                              ; preds = %124, %66
  br label %126

126:                                              ; preds = %125, %61
  br label %127

127:                                              ; preds = %126, %15
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @atf_process_stream_type(%struct.TYPE_5__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @safe_dup(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @atf_libc_error(i32, i8*, i32, ...) #1

declare dso_local i32 @atf_no_error(...) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i32 @atf_fs_path_cstring(i32) #1

declare dso_local i64 @atf_is_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
