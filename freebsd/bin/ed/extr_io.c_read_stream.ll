; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_read_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@newline_added = common dso_local global i32 0, align 4
@isbinary = common dso_local global i32 0, align 4
@addr_last = common dso_local global i64 0, align 8
@current_addr = common dso_local global i64 0, align 8
@sbuf = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@UADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"newline inserted\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"newline appended\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_stream(i32* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.TYPE_6__* @get_addressed_line_node(i64 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32, i32* @newline_added, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @isbinary, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @addr_last, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  store i32 0, i32* @newline_added, align 4
  store i32 0, i32* @isbinary, align 4
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* @current_addr, align 8
  br label %22

22:                                               ; preds = %56, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @get_stream_line(i32* %23)
  store i32 %24, i32* %12, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = call i32 (...) @SPL1()
  %28 = load i32, i32* @sbuf, align 4
  %29 = call i32* @put_sbuf_line(i32 %28)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (...) @SPL0()
  %33 = load i64, i64* @ERR, align 8
  store i64 %33, i64* %3, align 8
  br label %126

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %6, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %43, align 8
  br label %54

44:                                               ; preds = %34
  %45 = load i32, i32* @UADD, align 4
  %46 = load i64, i64* @current_addr, align 8
  %47 = load i64, i64* @current_addr, align 8
  %48 = call %struct.TYPE_5__* @push_undo_stack(i32 %45, i64 %46, i64 %47)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %7, align 8
  %49 = icmp eq %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = call i32 (...) @SPL0()
  %52 = load i64, i64* @ERR, align 8
  store i64 %52, i64* %3, align 8
  br label %126

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %40
  %55 = call i32 (...) @SPL0()
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %8, align 8
  br label %22

61:                                               ; preds = %22
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @ERR, align 8
  store i64 %65, i64* %3, align 8
  br label %126

66:                                               ; preds = %61
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %97

81:                                               ; preds = %75, %72, %69, %66
  %82 = load i32, i32* @newline_added, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* @isbinary, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @stderr, align 4
  %95 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %90, %87, %81
  br label %97

97:                                               ; preds = %96, %78
  %98 = load i32, i32* @isbinary, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* @newline_added, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %8, align 8
  br label %109

109:                                              ; preds = %106, %103, %100, %97
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  store i32 1, i32* @newline_added, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @newline_added, align 4
  br label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* @newline_added, align 4
  %122 = load i32, i32* @isbinary, align 4
  %123 = load i32, i32* %10, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* @isbinary, align 4
  %125 = load i64, i64* %8, align 8
  store i64 %125, i64* %3, align 8
  br label %126

126:                                              ; preds = %120, %64, %50, %31
  %127 = load i64, i64* %3, align 8
  ret i64 %127
}

declare dso_local %struct.TYPE_6__* @get_addressed_line_node(i64) #1

declare dso_local i32 @get_stream_line(i32*) #1

declare dso_local i32 @SPL1(...) #1

declare dso_local i32* @put_sbuf_line(i32) #1

declare dso_local i32 @SPL0(...) #1

declare dso_local %struct.TYPE_5__* @push_undo_stack(i32, i64, i64) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
