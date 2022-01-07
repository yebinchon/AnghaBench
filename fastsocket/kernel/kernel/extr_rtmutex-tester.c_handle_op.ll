; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-tester.c_handle_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rtmutex-tester.c_handle_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_thread_data = type { i32, i32*, i64, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@rttest_event = common dso_local global i32 0, align 4
@MAX_RT_TEST_MUTEXES = common dso_local global i32 0, align 4
@mutexes = common dso_local global i32* null, align 8
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_thread_data*, i32)* @handle_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_op(%struct.test_thread_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.test_thread_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_thread_data* %0, %struct.test_thread_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %12 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %71 [
    i32 132, label %14
    i32 136, label %15
    i32 131, label %26
    i32 130, label %69
  ]

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %232

15:                                               ; preds = %2
  %16 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %17 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %20 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  store i32 1, i32* %22, align 4
  %23 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %24 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %25 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %3, align 4
  br label %232

26:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_RT_TEST_MUTEXES, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %33 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load i32*, i32** @mutexes, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @rt_mutex_unlock(i32* %44)
  %46 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %47 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %40, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %61 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = call i32 (...) @unlock_kernel()
  %66 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %67 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %66, i32 0, i32 3
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %59, %56
  store i32 0, i32* %3, align 4
  br label %232

69:                                               ; preds = %2
  %70 = call i32 @atomic_set(i32* @rttest_event, i32 0)
  store i32 0, i32* %3, align 4
  br label %232

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %232

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %79 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %229 [
    i32 138, label %81
    i32 133, label %81
    i32 135, label %118
    i32 134, label %118
    i32 129, label %167
    i32 137, label %207
    i32 128, label %219
  ]

81:                                               ; preds = %77, %77
  %82 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %83 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @MAX_RT_TEST_MUTEXES, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88, %81
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %232

94:                                               ; preds = %88
  %95 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %96 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 1, i32* %100, align 4
  %101 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %102 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %103 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** @mutexes, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = call i32 @rt_mutex_lock(i32* %107)
  %109 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %110 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %111 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %110, i32 0, i32 4
  store i8* %109, i8** %111, align 8
  %112 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %113 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 4, i32* %117, align 4
  store i32 0, i32* %3, align 4
  br label %232

118:                                              ; preds = %77, %77
  %119 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %120 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @MAX_RT_TEST_MUTEXES, align 4
  %128 = icmp sge i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %118
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %232

131:                                              ; preds = %125
  %132 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %133 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 1, i32* %137, align 4
  %138 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %139 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %140 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %139, i32 0, i32 4
  store i8* %138, i8** %140, align 8
  %141 = load i32*, i32** @mutexes, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = call i32 @rt_mutex_lock_interruptible(i32* %144, i32 0)
  store i32 %145, i32* %8, align 4
  %146 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %147 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %148 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 0, i32 4
  %153 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %154 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %131
  %162 = load i32, i32* @EINTR, align 4
  %163 = sub nsw i32 0, %162
  br label %165

164:                                              ; preds = %131
  br label %165

165:                                              ; preds = %164, %161
  %166 = phi i32 [ %163, %161 ], [ 0, %164 ]
  store i32 %166, i32* %3, align 4
  br label %232

167:                                              ; preds = %77
  %168 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %169 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %187, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @MAX_RT_TEST_MUTEXES, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %180 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 4
  br i1 %186, label %187, label %189

187:                                              ; preds = %178, %174, %167
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %3, align 4
  br label %232

189:                                              ; preds = %178
  %190 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %191 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %192 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %191, i32 0, i32 4
  store i8* %190, i8** %192, align 8
  %193 = load i32*, i32** @mutexes, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = call i32 @rt_mutex_unlock(i32* %196)
  %198 = call i8* @atomic_add_return(i32 1, i32* @rttest_event)
  %199 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %200 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  %201 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %202 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 0, i32* %206, align 4
  store i32 0, i32* %3, align 4
  br label %232

207:                                              ; preds = %77
  %208 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %209 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  br label %232

213:                                              ; preds = %207
  %214 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %215 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %214, i32 0, i32 3
  store i32 1, i32* %215, align 8
  %216 = call i32 (...) @lock_kernel()
  %217 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %218 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %217, i32 0, i32 3
  store i32 4, i32* %218, align 8
  store i32 0, i32* %3, align 4
  br label %232

219:                                              ; preds = %77
  %220 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %221 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 4
  br i1 %223, label %224, label %225

224:                                              ; preds = %219
  br label %230

225:                                              ; preds = %219
  %226 = call i32 (...) @unlock_kernel()
  %227 = load %struct.test_thread_data*, %struct.test_thread_data** %4, align 8
  %228 = getelementptr inbounds %struct.test_thread_data, %struct.test_thread_data* %227, i32 0, i32 3
  store i32 0, i32* %228, align 8
  store i32 0, i32* %3, align 4
  br label %232

229:                                              ; preds = %77
  br label %230

230:                                              ; preds = %229, %224
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %230, %225, %213, %212, %189, %187, %165, %129, %94, %92, %74, %69, %68, %15, %14
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i8* @atomic_add_return(i32, i32*) #1

declare dso_local i32 @rt_mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rt_mutex_lock(i32*) #1

declare dso_local i32 @rt_mutex_lock_interruptible(i32*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
