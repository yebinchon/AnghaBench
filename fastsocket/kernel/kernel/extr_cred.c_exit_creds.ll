; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_exit_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_exit_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"exit_creds(%u,%p,%p,{%d,%d})\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_creds(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @read_cred_subscribers(%struct.TYPE_3__* %20)
  %22 = call i32 @kdebug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %6, i32* %9, %struct.TYPE_3__* %12, i32 %17, i32 %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to %struct.cred*
  store %struct.cred* %26, %struct.cred** %3, align 8
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.cred*, %struct.cred** %3, align 8
  %30 = call i32 @validate_creds(%struct.cred* %29)
  %31 = load %struct.cred*, %struct.cred** %3, align 8
  %32 = call i32 @alter_cred_subscribers(%struct.cred* %31, i32 -1)
  %33 = load %struct.cred*, %struct.cred** %3, align 8
  %34 = call i32 @put_cred(%struct.cred* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %36 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to %struct.cred*
  store %struct.cred* %38, %struct.cred** %3, align 8
  %39 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.cred*, %struct.cred** %3, align 8
  %42 = call i32 @validate_creds(%struct.cred* %41)
  %43 = load %struct.cred*, %struct.cred** %3, align 8
  %44 = call i32 @alter_cred_subscribers(%struct.cred* %43, i32 -1)
  %45 = load %struct.cred*, %struct.cred** %3, align 8
  %46 = call i32 @put_cred(%struct.cred* %45)
  %47 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = bitcast i32* %49 to %struct.cred*
  store %struct.cred* %50, %struct.cred** %3, align 8
  %51 = load %struct.cred*, %struct.cred** %3, align 8
  %52 = icmp ne %struct.cred* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %1
  %54 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.cred*, %struct.cred** %3, align 8
  %57 = call i32 @validate_creds(%struct.cred* %56)
  %58 = load %struct.cred*, %struct.cred** %3, align 8
  %59 = call i32 @put_cred(%struct.cred* %58)
  br label %60

60:                                               ; preds = %53, %1
  ret void
}

declare dso_local i32 @kdebug(i8*, i32, i32*, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @read_cred_subscribers(%struct.TYPE_3__*) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @alter_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
