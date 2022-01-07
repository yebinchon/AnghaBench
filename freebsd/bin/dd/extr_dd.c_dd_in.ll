; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_dd.c_dd_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@cpy_cnt = common dso_local global i32 0, align 4
@st = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@speed = common dso_local global i64 0, align 8
@ddflags = common dso_local global i32 0, align 4
@C_SYNC = common dso_local global i32 0, align 4
@C_FILL = common dso_local global i32 0, align 4
@in = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@fill_char = common dso_local global i8 0, align 1
@C_BLOCK = common dso_local global i32 0, align 4
@C_UNBLOCK = common dso_local global i32 0, align 4
@C_NOERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ISSEEK = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@C_IFULLBLOCK = common dso_local global i32 0, align 4
@C_NOTRUNC = common dso_local global i32 0, align 4
@C_BS = common dso_local global i32 0, align 4
@out = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@C_SWAB = common dso_local global i32 0, align 4
@need_summary = common dso_local global i64 0, align 8
@need_progress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dd_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dd_in() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %186, %149, %102, %0
  %3 = load i32, i32* @cpy_cnt, align 4
  switch i32 %3, label %6 [
    i32 -1, label %4
    i32 0, label %5
  ]

4:                                                ; preds = %2
  br label %187

5:                                                ; preds = %2
  br label %15

6:                                                ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 2), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 1), align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @cpy_cnt, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp sge i64 %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %187

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %14, %5
  %16 = load i64, i64* @speed, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @speed_limit()
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @ddflags, align 4
  %22 = load i32, i32* @C_SYNC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %20
  %26 = load i32, i32* @ddflags, align 4
  %27 = load i32, i32* @C_FILL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %32 = load i8, i8* @fill_char, align 1
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %34 = call i32 @memset(i64 %31, i8 signext %32, i32 %33)
  br label %51

35:                                               ; preds = %25
  %36 = load i32, i32* @ddflags, align 4
  %37 = load i32, i32* @C_BLOCK, align 4
  %38 = load i32, i32* @C_UNBLOCK, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %45 = call i32 @memset(i64 %43, i8 signext 32, i32 %44)
  br label %50

46:                                               ; preds = %35
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %49 = call i32 @memset(i64 %47, i8 signext 0, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %30
  br label %52

52:                                               ; preds = %51, %20
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  br label %53

53:                                               ; preds = %129, %52
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 6), align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @read(i32 %54, i64 %58, i32 %61)
  store i32 %62, i32* %1, align 4
  %63 = load i32, i32* %1, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %187

69:                                               ; preds = %65, %53
  %70 = load i32, i32* %1, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = load i32, i32* @ddflags, align 4
  %74 = load i32, i32* @C_NOERROR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  %79 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  %82 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = call i32 (...) @summary()
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 2), align 8
  %85 = load i32, i32* @ISSEEK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %80
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 6), align 4
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %91 = load i32, i32* @SEEK_CUR, align 4
  %92 = call i64 @lseek(i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 5), align 8
  %96 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %88, %80
  %98 = load i32, i32* @ddflags, align 4
  %99 = load i32, i32* @C_SYNC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %2

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %69
  %105 = load i32, i32* @ddflags, align 4
  %106 = load i32, i32* @C_SYNC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* %1, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 0), align 8
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 2), align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 2), align 8
  br label %134

121:                                              ; preds = %111
  %122 = load i32, i32* @ddflags, align 4
  %123 = load i32, i32* @C_IFULLBLOCK, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* %1, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %53

130:                                              ; preds = %126, %121
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 1), align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 1), align 8
  br label %133

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133, %118
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 4), align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 4), align 8
  %139 = load i32, i32* @ddflags, align 4
  %140 = load i32, i32* @C_NOERROR, align 4
  %141 = load i32, i32* @C_NOTRUNC, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @C_SYNC, align 4
  %144 = or i32 %142, %143
  %145 = xor i32 %144, -1
  %146 = and i32 %139, %145
  %147 = load i32, i32* @C_BS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %134
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 4), align 8
  store i64 %150, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @out, i32 0, i32 0), align 8
  %151 = call i32 @dd_out(i32 1)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 4), align 8
  br label %2

152:                                              ; preds = %134
  %153 = load i32, i32* @ddflags, align 4
  %154 = load i32, i32* @C_SWAB, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  store i32 %158, i32* %1, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @st, i32 0, i32 0), align 8
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %1, align 4
  br label %166

166:                                              ; preds = %161, %157
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %168 = load i32, i32* %1, align 4
  %169 = sext i32 %168 to i64
  %170 = call i32 @swapbytes(i64 %167, i64 %169)
  br label %171

171:                                              ; preds = %166, %152
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 1), align 4
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @in, i32 0, i32 3), align 8
  %176 = call i32 (...) @cfunc()
  %177 = load i64, i64* @need_summary, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %171
  %180 = call i32 (...) @summary()
  br label %181

181:                                              ; preds = %179, %171
  %182 = load i64, i64* @need_progress, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 (...) @progress()
  br label %186

186:                                              ; preds = %184, %181
  br label %2

187:                                              ; preds = %68, %13, %4
  ret void
}

declare dso_local i32 @speed_limit(...) #1

declare dso_local i32 @memset(i64, i8 signext, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @summary(...) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @dd_out(i32) #1

declare dso_local i32 @swapbytes(i64, i64) #1

declare dso_local i32 @cfunc(...) #1

declare dso_local i32 @progress(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
