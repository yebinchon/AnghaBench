; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32, i32, i32, i32 }

@cfunc = common dso_local global i64 0, align 8
@def = common dso_local global i64 0, align 8
@block = common dso_local global i64 0, align 8
@unblock = common dso_local global i64 0, align 8
@ddflags = common dso_local global i32 0, align 4
@C_OSYNC = common dso_local global i32 0, align 4
@out = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@C_FILL = common dso_local global i32 0, align 4
@fill_char = common dso_local global i8 0, align 1
@C_BLOCK = common dso_local global i32 0, align 4
@C_UNBLOCK = common dso_local global i32 0, align 4
@pending = common dso_local global i64 0, align 8
@ISTRUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"truncating %s\00", align 1
@C_FSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fsyncing %s\00", align 1
@C_FDATASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"fdatasyncing %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_close() #0 {
  %1 = load i64, i64* @cfunc, align 8
  %2 = load i64, i64* @def, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @def_close()
  br label %20

6:                                                ; preds = %0
  %7 = load i64, i64* @cfunc, align 8
  %8 = load i64, i64* @block, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @block_close()
  br label %19

12:                                               ; preds = %6
  %13 = load i64, i64* @cfunc, align 8
  %14 = load i64, i64* @unblock, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 (...) @unblock_close()
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  br label %20

20:                                               ; preds = %19, %4
  %21 = load i32, i32* @ddflags, align 4
  %22 = load i32, i32* @C_OSYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 1), align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32, i32* @ddflags, align 4
  %34 = load i32, i32* @C_FILL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 6), align 4
  %39 = load i8, i8* @fill_char, align 1
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 1), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i32 @memset(i32 %38, i8 signext %39, i64 %42)
  br label %64

44:                                               ; preds = %32
  %45 = load i32, i32* @ddflags, align 4
  %46 = load i32, i32* @C_BLOCK, align 4
  %47 = load i32, i32* @C_UNBLOCK, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 6), align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 1), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @memset(i32 %52, i8 signext 32, i64 %55)
  br label %63

57:                                               ; preds = %44
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 6), align 4
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 1), align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i32 @memset(i32 %58, i8 signext 0, i64 %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 1), align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  br label %66

66:                                               ; preds = %64, %28, %25, %20
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 0), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* @pending, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69, %66
  %73 = call i32 @dd_out(i32 1)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 2), align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 3), align 8
  %79 = load i32, i32* @ISTRUNC, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 5), align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 2), align 8
  %85 = call i32 @ftruncate(i32 %83, i64 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 4), align 4
  %89 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %77, %74
  %92 = load i32, i32* @ddflags, align 4
  %93 = load i32, i32* @C_FSYNC, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 5), align 8
  %98 = call i32 @fsync(i32 %97)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 4), align 4
  %102 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %96
  br label %118

104:                                              ; preds = %91
  %105 = load i32, i32* @ddflags, align 4
  %106 = load i32, i32* @C_FDATASYNC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 5), align 8
  %111 = call i32 @fdatasync(i32 %110)
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @out, i32 0, i32 4), align 4
  %115 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %113, %109
  br label %117

117:                                              ; preds = %116, %104
  br label %118

118:                                              ; preds = %117, %103
  ret void
}

declare dso_local i32 @def_close(...) #1

declare dso_local i32 @block_close(...) #1

declare dso_local i32 @unblock_close(...) #1

declare dso_local i32 @memset(i32, i8 signext, i64) #1

declare dso_local i32 @dd_out(i32) #1

declare dso_local i32 @ftruncate(i32, i64) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @fdatasync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
