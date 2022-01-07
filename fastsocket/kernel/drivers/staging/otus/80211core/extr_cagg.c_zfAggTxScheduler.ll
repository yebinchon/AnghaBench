; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxScheduler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxScheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i32 }
%struct.TYPE_9__ = type { i64, %struct.dest* (i32*, i64)*, i64* }
%struct.dest = type { i64, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@TXQL = common dso_local global i64 0, align 8
@AGG_MIN_TXQL = common dso_local global i64 0, align 8
@DESTQ = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@pri = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"bug report! DESTQ.getNext got nothing!\00", align 1
@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfAggTxScheduler(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dest*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = call i32 (...) @zmw_declare_for_critical_section()
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %225

23:                                               ; preds = %2
  %24 = load i64, i64* @TXQL, align 8
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* @AGG_MIN_TXQL, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  br label %36

34:                                               ; preds = %23
  %35 = load i64, i64* @AGG_MIN_TXQL, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32*, i32** %3, align 8
  %38 = call %struct.TYPE_7__* @zfAggTxReady(i32* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %42

42:                                               ; preds = %41, %36
  br label %43

43:                                               ; preds = %221, %168, %42
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @zfHpGetFreeTxdCount(i32* %44)
  %46 = icmp sgt i32 %45, 20
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64, i64* @TXQL, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ true, %47 ], [ %53, %51 ]
  br label %56

56:                                               ; preds = %54, %43
  %57 = phi i1 [ false, %43 ], [ %55, %54 ]
  br i1 %57, label %58, label %224

58:                                               ; preds = %56
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %72, %58
  %60 = load i64, i64* %12, align 8
  %61 = icmp slt i64 %60, 4
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 2), align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i64, i64* %14, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %59

75:                                               ; preds = %59
  %76 = load i64, i64* %14, align 8
  %77 = icmp sge i64 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %224

79:                                               ; preds = %75
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @zmw_enter_critical_section(i32* %80)
  %82 = load i64*, i64** @pri, align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %87 = add i64 %86, 1
  %88 = urem i64 %87, 10
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @zmw_leave_critical_section(i32* %89)
  store i64 0, i64* %12, align 8
  br label %91

91:                                               ; preds = %113, %79
  %92 = load i64, i64* %12, align 8
  %93 = icmp slt i64 %92, 10
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load i64*, i64** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 2), align 8
  %96 = load i64, i64* %13, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %116

101:                                              ; preds = %94
  %102 = load i32*, i32** %3, align 8
  %103 = call i32 @zmw_enter_critical_section(i32* %102)
  %104 = load i64*, i64** @pri, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %13, align 8
  %108 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %109 = add i64 %108, 1
  %110 = urem i64 %109, 10
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 0), align 8
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @zmw_leave_critical_section(i32* %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i64, i64* %12, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %12, align 8
  br label %91

116:                                              ; preds = %100, %91
  %117 = load i64, i64* %12, align 8
  %118 = icmp eq i64 %117, 10
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %224

120:                                              ; preds = %116
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @zmw_enter_critical_section(i32* %121)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @zmw_leave_critical_section(i32* %125)
  %127 = load %struct.dest* (i32*, i64)*, %struct.dest* (i32*, i64)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @DESTQ, i32 0, i32 1), align 8
  %128 = load i32*, i32** %3, align 8
  %129 = load i64, i64* %13, align 8
  %130 = call %struct.dest* %127(i32* %128, i64 %129)
  store %struct.dest* %130, %struct.dest** %7, align 8
  %131 = load %struct.dest*, %struct.dest** %7, align 8
  %132 = icmp ne %struct.dest* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %120
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @zmw_enter_critical_section(i32* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i32 0, i32* %137, align 8
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @zmw_leave_critical_section(i32* %138)
  %140 = call i32 @DbgPrint(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %224

141:                                              ; preds = %120
  %142 = load %struct.dest*, %struct.dest** %7, align 8
  %143 = getelementptr inbounds %struct.dest, %struct.dest* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %206

146:                                              ; preds = %141
  %147 = load %struct.dest*, %struct.dest** %7, align 8
  %148 = getelementptr inbounds %struct.dest, %struct.dest* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  store %struct.TYPE_7__* %149, %struct.TYPE_7__** %5, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = icmp ne %struct.TYPE_7__* %150, null
  br i1 %151, label %152, label %168

152:                                              ; preds = %146
  %153 = load i32*, i32** %3, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = call i64 @zfAggValidTidTx(i32* %153, %struct.TYPE_7__* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load i32*, i32** %3, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @zm_agg_qlen(i32* %158, i32 %161, i32 %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 4
  br label %177

168:                                              ; preds = %152, %146
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @zmw_enter_critical_section(i32* %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i32 0, i32* %172, align 8
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @zmw_leave_critical_section(i32* %173)
  %175 = load i32*, i32** %3, align 8
  %176 = call %struct.TYPE_7__* @zfAggTxReady(i32* %175)
  store %struct.TYPE_7__* %176, %struct.TYPE_7__** %5, align 8
  br label %43

177:                                              ; preds = %157
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @zmw_enter_critical_section(i32* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 8
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @zmw_leave_critical_section(i32* %182)
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = icmp ne %struct.TYPE_7__* %184, null
  br i1 %185, label %186, label %192

186:                                              ; preds = %177
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  br label %205

192:                                              ; preds = %186, %177
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32*, i32** %3, align 8
  %199 = load i32*, i32** %3, align 8
  %200 = call i32 @zfHpGetFreeTxdCount(i32* %199)
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = call i32 @zfAggTxSend(i32* %198, i32 %200, %struct.TYPE_7__* %201)
  br label %204

203:                                              ; preds = %192
  br label %224

204:                                              ; preds = %197
  br label %205

205:                                              ; preds = %204, %191
  br label %221

206:                                              ; preds = %141
  %207 = load %struct.dest*, %struct.dest** %7, align 8
  %208 = getelementptr inbounds %struct.dest, %struct.dest* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  store i8* %209, i8** %6, align 8
  %210 = load i32*, i32** %3, align 8
  %211 = load i64, i64* %13, align 8
  %212 = call i32* @zfGetVtxq(i32* %210, i64 %211)
  store i32* %212, i32** %8, align 8
  %213 = load i32*, i32** %8, align 8
  %214 = icmp ne i32* %213, null
  %215 = zext i1 %214 to i32
  %216 = call i32 @zm_assert(i32 %215)
  %217 = load i32*, i32** %3, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %220 = call i32 @zfTxSendEth(i32* %217, i32* %218, i32 0, i32 %219, i32 0)
  br label %221

221:                                              ; preds = %206, %205
  %222 = load i32*, i32** %3, align 8
  %223 = call %struct.TYPE_7__* @zfAggTxReady(i32* %222)
  store %struct.TYPE_7__* %223, %struct.TYPE_7__** %5, align 8
  br label %43

224:                                              ; preds = %203, %133, %119, %78, %56
  br label %225

225:                                              ; preds = %224, %22
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local %struct.TYPE_7__* @zfAggTxReady(i32*) #1

declare dso_local i32 @zfHpGetFreeTxdCount(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i64 @zfAggValidTidTx(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @zm_agg_qlen(i32*, i32, i32) #1

declare dso_local i32 @zfAggTxSend(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32* @zfGetVtxq(i32*, i64) #1

declare dso_local i32 @zm_assert(i32) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
