; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@dd_out.warned = internal global i32 0, align 4
@out = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ddflags = common dso_local global i32 0, align 4
@C_SPARSE = common dso_local global i32 0, align 4
@pending = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: seek error creating sparse file\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: end of device\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@st = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ISTAPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: short write on tape device\00", align 1
@ISCHR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: short write on character device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dd_out(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 4), align 8
  store i32* %8, i32** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  br label %15

13:                                               ; preds = %1
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 1), align 8
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i64 [ %12, %11 ], [ %14, %13 ]
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %139, %15
  %18 = load i64, i64* %5, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %128, %17
  store i32 0, i32* %7, align 4
  %20 = load i32, i32* @ddflags, align 4
  %21 = load i32, i32* @C_SPARSE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @BISZERO(i32* %25, i64 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @pending, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* @pending, align 8
  %38 = load i64, i64* %4, align 8
  store i64 %38, i64* %6, align 8
  br label %63

39:                                               ; preds = %31, %28
  %40 = load i64, i64* @pending, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 7), align 4
  %44 = load i64, i64* @pending, align 8
  %45 = load i32, i32* @SEEK_CUR, align 4
  %46 = call i32 @lseek(i32 %43, i64 %44, i32 %45)
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 2), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 2), align 8
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 6), align 8
  %51 = call i32 @err(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  store i64 0, i64* @pending, align 8
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 7), align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @write(i32 %57, i32* %58, i64 %59)
  store i64 %60, i64* %6, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 2), align 8
  br label %62

61:                                               ; preds = %53
  br label %156

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i64, i64* %6, align 8
  %65 = icmp ule i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 6), align 8
  %71 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* @errno, align 8
  %74 = load i64, i64* @EINTR, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 6), align 8
  %78 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %72
  store i64 0, i64* %6, align 8
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i64, i64* %6, align 8
  %82 = load i32*, i32** %3, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %3, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 0), align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %80
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 1), align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 2), align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 2), align 4
  br label %100

97:                                               ; preds = %90, %80
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 1), align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @st, i32 0, i32 1), align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %4, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 3), align 4
  %106 = load i32, i32* @ISTAPE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 6), align 8
  %111 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 3), align 4
  %114 = load i32, i32* @ISCHR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i32, i32* @dd_out.warned, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  store i32 1, i32* @dd_out.warned, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 6), align 8
  %122 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %117, %112
  br label %124

124:                                              ; preds = %123, %100
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %4, align 8
  %127 = sub i64 %126, %125
  store i64 %127, i64* %4, align 8
  br label %128

128:                                              ; preds = %124
  %129 = load i64, i64* %4, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %19, label %131

131:                                              ; preds = %128
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %134 = sub i64 %133, %132
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %135 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 1), align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %141

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 1), align 8
  store i64 %140, i64* %5, align 8
  br label %17

141:                                              ; preds = %137
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 4), align 8
  %146 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 5), align 8
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %151 = call i32 @memmove(i32* %145, i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %144, %141
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 4), align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 0), align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32* %155, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @out, i32 0, i32 5), align 8
  br label %156

156:                                              ; preds = %152, %61
  ret void
}

declare dso_local i32 @BISZERO(i32*, i64) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i64 @write(i32, i32*, i64) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
