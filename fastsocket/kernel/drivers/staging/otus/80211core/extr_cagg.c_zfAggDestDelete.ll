; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestDelete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggDestDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32**, %struct.dest** }
%struct.dest = type { i8*, %struct.dest*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@DESTQ = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfAggDestDelete(i32* %0, i32 %1, %struct.TYPE_5__* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dest*, align 8
  %10 = alloca %struct.dest*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @zmw_enter_critical_section(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @zmw_leave_critical_section(i32* %22)
  br label %178

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %172, %24
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 4
  br i1 %27, label %28, label %175

28:                                               ; preds = %25
  %29 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 1), align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.dest*, %struct.dest** %29, i64 %31
  %33 = load %struct.dest*, %struct.dest** %32, align 8
  %34 = icmp ne %struct.dest* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %172

36:                                               ; preds = %28
  %37 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 1), align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dest*, %struct.dest** %37, i64 %39
  %41 = load %struct.dest*, %struct.dest** %40, align 8
  store %struct.dest* %41, %struct.dest** %9, align 8
  %42 = load %struct.dest*, %struct.dest** %9, align 8
  %43 = icmp ne %struct.dest* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %172

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %85, %45
  %47 = load %struct.dest*, %struct.dest** %9, align 8
  %48 = icmp ne %struct.dest* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load %struct.dest*, %struct.dest** %9, align 8
  %51 = getelementptr inbounds %struct.dest, %struct.dest* %50, i32 0, i32 1
  %52 = load %struct.dest*, %struct.dest** %51, align 8
  %53 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 1), align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dest*, %struct.dest** %53, i64 %55
  %57 = load %struct.dest*, %struct.dest** %56, align 8
  %58 = icmp ne %struct.dest* %52, %57
  br label %59

59:                                               ; preds = %49, %46
  %60 = phi i1 [ false, %46 ], [ %58, %49 ]
  br i1 %60, label %61, label %89

61:                                               ; preds = %59
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.dest*, %struct.dest** %9, align 8
  %66 = getelementptr inbounds %struct.dest, %struct.dest* %65, i32 0, i32 1
  %67 = load %struct.dest*, %struct.dest** %66, align 8
  %68 = getelementptr inbounds %struct.dest, %struct.dest* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = icmp eq %struct.TYPE_5__* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %89

73:                                               ; preds = %64, %61
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.dest*, %struct.dest** %9, align 8
  %78 = getelementptr inbounds %struct.dest, %struct.dest* %77, i32 0, i32 1
  %79 = load %struct.dest*, %struct.dest** %78, align 8
  %80 = getelementptr inbounds %struct.dest, %struct.dest* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %89

85:                                               ; preds = %76, %73
  %86 = load %struct.dest*, %struct.dest** %9, align 8
  %87 = getelementptr inbounds %struct.dest, %struct.dest* %86, i32 0, i32 1
  %88 = load %struct.dest*, %struct.dest** %87, align 8
  store %struct.dest* %88, %struct.dest** %9, align 8
  br label %46

89:                                               ; preds = %84, %72, %59
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.dest*, %struct.dest** %9, align 8
  %94 = getelementptr inbounds %struct.dest, %struct.dest* %93, i32 0, i32 1
  %95 = load %struct.dest*, %struct.dest** %94, align 8
  %96 = getelementptr inbounds %struct.dest, %struct.dest* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = icmp eq %struct.TYPE_5__* %97, %98
  br i1 %99, label %111, label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %171

103:                                              ; preds = %100
  %104 = load %struct.dest*, %struct.dest** %9, align 8
  %105 = getelementptr inbounds %struct.dest, %struct.dest* %104, i32 0, i32 1
  %106 = load %struct.dest*, %struct.dest** %105, align 8
  %107 = getelementptr inbounds %struct.dest, %struct.dest* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = icmp eq i8* %108, %109
  br i1 %110, label %111, label %171

111:                                              ; preds = %103, %92
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @zm_agg_qlen(i32* %112, i32 %115, i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 @zmw_leave_critical_section(i32* %127)
  br label %178

129:                                              ; preds = %111
  %130 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 1), align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.dest*, %struct.dest** %130, i64 %132
  %134 = load %struct.dest*, %struct.dest** %133, align 8
  %135 = icmp ne %struct.dest* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store %struct.dest* null, %struct.dest** %10, align 8
  br label %162

137:                                              ; preds = %129
  %138 = load %struct.dest*, %struct.dest** %9, align 8
  %139 = getelementptr inbounds %struct.dest, %struct.dest* %138, i32 0, i32 1
  %140 = load %struct.dest*, %struct.dest** %139, align 8
  store %struct.dest* %140, %struct.dest** %10, align 8
  %141 = load %struct.dest*, %struct.dest** %10, align 8
  %142 = load %struct.dest*, %struct.dest** %9, align 8
  %143 = icmp eq %struct.dest* %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 0), align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  store i32* null, i32** %148, align 8
  %149 = load %struct.dest**, %struct.dest*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @DESTQ, i32 0, i32 1), align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.dest*, %struct.dest** %149, i64 %151
  store %struct.dest* null, %struct.dest** %152, align 8
  br label %161

153:                                              ; preds = %137
  %154 = load %struct.dest*, %struct.dest** %9, align 8
  %155 = getelementptr inbounds %struct.dest, %struct.dest* %154, i32 0, i32 1
  %156 = load %struct.dest*, %struct.dest** %155, align 8
  %157 = getelementptr inbounds %struct.dest, %struct.dest* %156, i32 0, i32 1
  %158 = load %struct.dest*, %struct.dest** %157, align 8
  %159 = load %struct.dest*, %struct.dest** %9, align 8
  %160 = getelementptr inbounds %struct.dest, %struct.dest* %159, i32 0, i32 1
  store %struct.dest* %158, %struct.dest** %160, align 8
  br label %161

161:                                              ; preds = %153, %144
  br label %162

162:                                              ; preds = %161, %136
  %163 = load %struct.dest*, %struct.dest** %10, align 8
  %164 = icmp eq %struct.dest* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %170

166:                                              ; preds = %162
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.dest*, %struct.dest** %10, align 8
  %169 = call i32 @zfwMemFree(i32* %167, %struct.dest* %168, i32 24)
  br label %170

170:                                              ; preds = %166, %165
  br label %171

171:                                              ; preds = %170, %103, %100
  br label %172

172:                                              ; preds = %171, %44, %35
  %173 = load i32, i32* %11, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %11, align 4
  br label %25

175:                                              ; preds = %25
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @zmw_leave_critical_section(i32* %176)
  br label %178

178:                                              ; preds = %175, %126, %21
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_agg_qlen(i32*, i32, i32) #1

declare dso_local i32 @zfwMemFree(i32*, %struct.dest*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
