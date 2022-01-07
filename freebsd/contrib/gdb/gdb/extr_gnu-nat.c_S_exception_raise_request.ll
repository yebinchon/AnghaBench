; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_S_exception_raise_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_S_exception_raise_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.TYPE_10__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.proc* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64 }
%struct.proc = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@waiting_inf = common dso_local global %struct.inf* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"thread = %d, task = %d, exc = %d, code = %d, subcode = %d\00", align 1
@TARGET_WAITKIND_STOPPED = common dso_local global i32 0, align 4
@EXC_BREAKPOINT = common dso_local global i32 0, align 4
@TARGET_SIGNAL_TRAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Handler is thread exception port <%d>\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Handler is task exception port <%d>\00", align 1
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@MACH_PORT_RIGHT_SEND = common dso_local global i32 0, align 4
@_NSIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @S_exception_raise_request(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.inf*, align 8
  %17 = alloca %struct.proc*, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  store %struct.inf* %18, %struct.inf** %16, align 8
  %19 = load %struct.inf*, %struct.inf** %16, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call %struct.proc* @inf_port_to_thread(%struct.inf* %19, i64 %20)
  store %struct.proc* %21, %struct.proc** %17, align 8
  %22 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call i32 (%struct.inf*, i8*, i64, ...) @inf_debug(%struct.inf* %22, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.proc*, %struct.proc** %17, align 8
  %30 = icmp ne %struct.proc* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %7
  %32 = load %struct.inf*, %struct.inf** %16, align 8
  %33 = call i32 @inf_update_procs(%struct.inf* %32)
  %34 = load %struct.inf*, %struct.inf** %16, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call %struct.proc* @inf_port_to_thread(%struct.inf* %34, i64 %35)
  store %struct.proc* %36, %struct.proc** %17, align 8
  %37 = load %struct.proc*, %struct.proc** %17, align 8
  %38 = icmp ne %struct.proc* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %177

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %7
  %42 = call i32 (...) @mach_task_self()
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @mach_port_deallocate(i32 %42, i64 %43)
  %45 = call i32 (...) @mach_task_self()
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @mach_port_deallocate(i32 %45, i64 %46)
  %48 = load %struct.proc*, %struct.proc** %17, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %169, label %52

52:                                               ; preds = %41
  %53 = load %struct.proc*, %struct.proc** %17, align 8
  %54 = load %struct.inf*, %struct.inf** %16, align 8
  %55 = getelementptr inbounds %struct.inf, %struct.inf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  store %struct.proc* %53, %struct.proc** %56, align 8
  %57 = load i32, i32* @TARGET_WAITKIND_STOPPED, align 4
  %58 = load %struct.inf*, %struct.inf** %16, align 8
  %59 = getelementptr inbounds %struct.inf, %struct.inf* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @EXC_BREAKPOINT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %52
  %66 = load i32, i32* @TARGET_SIGNAL_TRAP, align 4
  %67 = load %struct.inf*, %struct.inf** %16, align 8
  %68 = getelementptr inbounds %struct.inf, %struct.inf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  %72 = call i32 (...) @mach_task_self()
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @mach_port_deallocate(i32 %72, i64 %73)
  br label %168

75:                                               ; preds = %52
  %76 = load %struct.proc*, %struct.proc** %17, align 8
  %77 = getelementptr inbounds %struct.proc, %struct.proc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  %83 = load %struct.proc*, %struct.proc** %17, align 8
  %84 = getelementptr inbounds %struct.proc, %struct.proc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (%struct.inf*, i8*, i64, ...) @inf_debug(%struct.inf* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load %struct.proc*, %struct.proc** %17, align 8
  %88 = getelementptr inbounds %struct.proc, %struct.proc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inf*, %struct.inf** %16, align 8
  %91 = getelementptr inbounds %struct.inf, %struct.inf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i64 %89, i64* %93, align 8
  br label %120

94:                                               ; preds = %75
  %95 = load %struct.inf*, %struct.inf** @waiting_inf, align 8
  %96 = load %struct.inf*, %struct.inf** %16, align 8
  %97 = getelementptr inbounds %struct.inf, %struct.inf* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 (%struct.inf*, i8*, i64, ...) @inf_debug(%struct.inf* %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %100)
  %102 = load %struct.inf*, %struct.inf** %16, align 8
  %103 = getelementptr inbounds %struct.inf, %struct.inf* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.inf*, %struct.inf** %16, align 8
  %108 = getelementptr inbounds %struct.inf, %struct.inf* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.inf*, %struct.inf** %16, align 8
  %112 = getelementptr inbounds %struct.inf, %struct.inf* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @gdb_assert(i32 %118)
  br label %120

120:                                              ; preds = %94, %81
  %121 = load %struct.inf*, %struct.inf** %16, align 8
  %122 = getelementptr inbounds %struct.inf, %struct.inf* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MACH_PORT_NULL, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %120
  %129 = call i32 (...) @mach_task_self()
  %130 = load %struct.inf*, %struct.inf** %16, align 8
  %131 = getelementptr inbounds %struct.inf, %struct.inf* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @MACH_PORT_RIGHT_SEND, align 4
  %136 = call i32 @mach_port_mod_refs(i32 %129, i64 %134, i32 %135, i32 1)
  br label %137

137:                                              ; preds = %128, %120
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.inf*, %struct.inf** %16, align 8
  %140 = getelementptr inbounds %struct.inf, %struct.inf* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.inf*, %struct.inf** %16, align 8
  %145 = getelementptr inbounds %struct.inf, %struct.inf* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  store i32 %143, i32* %147, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.inf*, %struct.inf** %16, align 8
  %150 = getelementptr inbounds %struct.inf, %struct.inf* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 3
  store i32 %148, i32* %152, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.inf*, %struct.inf** %16, align 8
  %155 = getelementptr inbounds %struct.inf, %struct.inf* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 4
  store i64 %153, i64* %157, align 8
  %158 = load i64, i64* @_NSIG, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %158, %160
  %162 = call i32 @target_signal_from_host(i64 %161)
  %163 = load %struct.inf*, %struct.inf** %16, align 8
  %164 = getelementptr inbounds %struct.inf, %struct.inf* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %137, %65
  br label %176

169:                                              ; preds = %41
  %170 = load %struct.inf*, %struct.inf** %16, align 8
  %171 = getelementptr inbounds %struct.inf, %struct.inf* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  %173 = call i32 (...) @mach_task_self()
  %174 = load i64, i64* %10, align 8
  %175 = call i32 @mach_port_deallocate(i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %169, %168
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %176, %39
  %178 = load i32, i32* %8, align 4
  ret i32 %178
}

declare dso_local %struct.proc* @inf_port_to_thread(%struct.inf*, i64) #1

declare dso_local i32 @inf_debug(%struct.inf*, i8*, i64, ...) #1

declare dso_local i32 @inf_update_procs(%struct.inf*) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @mach_port_mod_refs(i32, i64, i32, i32) #1

declare dso_local i32 @target_signal_from_host(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
