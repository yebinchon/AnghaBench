; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_collect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64, i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.vm_area_struct*, i64, i64 }
%struct.TYPE_6__ = type { %struct.pacct_struct }
%struct.pacct_struct = type { i64, i64, i32, i32, i8*, i8*, i32 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@PF_SUPERPRIV = common dso_local global i32 0, align 4
@ASU = common dso_local global i32 0, align 4
@PF_DUMPCORE = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@PF_SIGNALED = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acct_collect(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pacct_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.pacct_struct* %11, %struct.pacct_struct** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %52

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i32 @down_read(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %28, align 8
  store %struct.vm_area_struct* %29, %struct.vm_area_struct** %7, align 8
  br label %30

30:                                               ; preds = %33, %19
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %32 = icmp ne %struct.vm_area_struct* %31, null
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %38 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %44, align 8
  store %struct.vm_area_struct* %45, %struct.vm_area_struct** %7, align 8
  br label %30

46:                                               ; preds = %30
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  br label %52

52:                                               ; preds = %46, %14, %2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i64, i64* %6, align 8
  %62 = udiv i64 %61, 1024
  %63 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %64 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %67 = call i64 @thread_group_leader(%struct.TYPE_9__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i64, i64* %3, align 8
  %71 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %72 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PF_FORKNOEXEC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load i32, i32* @AFORK, align 4
  %81 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %82 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %69
  br label %86

86:                                               ; preds = %85, %65
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PF_SUPERPRIV, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @ASU, align 4
  %95 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %96 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @PF_DUMPCORE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @ACORE, align 4
  %108 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %109 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @PF_SIGNALED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @AXSIG, align 4
  %121 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %122 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %127 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cputime_add(i8* %128, i32 %131)
  %133 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %134 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %136 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @cputime_add(i8* %137, i32 %140)
  %142 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %143 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %148 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %157 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock_irq(i32* %165)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @thread_group_leader(%struct.TYPE_9__*) #1

declare dso_local i8* @cputime_add(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
