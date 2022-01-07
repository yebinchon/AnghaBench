; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_alloc_pidmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pid.c_alloc_pidmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { i32, %struct.pidmap* }
%struct.pidmap = type { i32, i8* }

@pid_max = common dso_local global i32 0, align 4
@RESERVED_PIDS = common dso_local global i32 0, align 4
@BITS_PER_PAGE_MASK = common dso_local global i32 0, align 4
@BITS_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pidmap_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pid_namespace*)* @alloc_pidmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_pidmap(%struct.pid_namespace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pidmap*, align 8
  %10 = alloca i8*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  %11 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %12 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @pid_max, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @RESERVED_PIDS, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %26 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %25, i32 0, i32 1
  %27 = load %struct.pidmap*, %struct.pidmap** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BITS_PER_PAGE, align 4
  %30 = sdiv i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %27, i64 %31
  store %struct.pidmap* %32, %struct.pidmap** %9, align 8
  %33 = load i32, i32* @pid_max, align 4
  %34 = load i32, i32* @BITS_PER_PAGE, align 4
  %35 = add nsw i32 %33, %34
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* @BITS_PER_PAGE, align 4
  %38 = sdiv i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sub nsw i32 %38, %42
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %178, %21
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %181

48:                                               ; preds = %44
  %49 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %50 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %48
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kzalloc(i32 %58, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = call i32 @spin_lock_irq(i32* @pidmap_lock)
  %62 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %63 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @kfree(i8* %67)
  br label %73

69:                                               ; preds = %57
  %70 = load i8*, i8** %10, align 8
  %71 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %72 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  %74 = call i32 @spin_unlock_irq(i32* @pidmap_lock)
  %75 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %76 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %181

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %48
  %86 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %87 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %86, i32 0, i32 0
  %88 = call i32 @atomic_read(i32* %87)
  %89 = call i64 @likely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %141, %91
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %95 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @test_and_set_bit(i32 %93, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %92
  %100 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %101 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %100, i32 0, i32 0
  %102 = call i32 @atomic_dec(i32* %101)
  %103 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @set_last_pid(%struct.pid_namespace* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %182

108:                                              ; preds = %92
  %109 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @find_next_offset(%struct.pidmap* %109, i32 %110)
  store i32 %111, i32* %5, align 4
  %112 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %113 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @mk_pid(%struct.pid_namespace* %112, %struct.pidmap* %113, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @BITS_PER_PAGE, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %141

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @pid_max, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %139, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = load i32, i32* @BITS_PER_PAGE_MASK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  br label %139

139:                                              ; preds = %132, %128, %124
  %140 = phi i1 [ true, %128 ], [ true, %124 ], [ %138, %132 ]
  br label %141

141:                                              ; preds = %139, %120, %116
  %142 = phi i1 [ false, %120 ], [ false, %116 ], [ %140, %139 ]
  br i1 %142, label %92, label %143

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %143, %85
  %145 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %146 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %147 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %146, i32 0, i32 1
  %148 = load %struct.pidmap*, %struct.pidmap** %147, align 8
  %149 = load i32, i32* @pid_max, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load i32, i32* @BITS_PER_PAGE, align 4
  %152 = sdiv i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %148, i64 %153
  %155 = icmp ult %struct.pidmap* %145, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %144
  %157 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %158 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %157, i32 1
  store %struct.pidmap* %158, %struct.pidmap** %9, align 8
  store i32 0, i32* %5, align 4
  br label %173

159:                                              ; preds = %144
  %160 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %161 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %160, i32 0, i32 1
  %162 = load %struct.pidmap*, %struct.pidmap** %161, align 8
  %163 = getelementptr inbounds %struct.pidmap, %struct.pidmap* %162, i64 0
  store %struct.pidmap* %163, %struct.pidmap** %9, align 8
  %164 = load i32, i32* @RESERVED_PIDS, align 4
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %159
  br label %181

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %156
  %174 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %175 = load %struct.pidmap*, %struct.pidmap** %9, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @mk_pid(%struct.pid_namespace* %174, %struct.pidmap* %175, i32 %176)
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %173
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %4, align 4
  br label %44

181:                                              ; preds = %171, %83, %44
  store i32 -1, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %99
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @set_last_pid(%struct.pid_namespace*, i32, i32) #1

declare dso_local i32 @find_next_offset(%struct.pidmap*, i32) #1

declare dso_local i32 @mk_pid(%struct.pid_namespace*, %struct.pidmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
