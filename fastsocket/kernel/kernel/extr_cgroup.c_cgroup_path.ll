; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.cgroup*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@dummytop = common dso_local global %struct.cgroup* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_path(%struct.cgroup* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call %struct.dentry* @rcu_dereference(%struct.TYPE_6__* %13)
  store %struct.dentry* %14, %struct.dentry** %9, align 8
  %15 = load %struct.dentry*, %struct.dentry** %9, align 8
  %16 = icmp ne %struct.dentry* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = load %struct.cgroup*, %struct.cgroup** @dummytop, align 8
  %20 = icmp eq %struct.cgroup* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcpy(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %95

24:                                               ; preds = %17
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 -1
  store i8* %30, i8** %8, align 8
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %80, %71, %24
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %31
  %44 = load i32, i32* @ENAMETOOLONG, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %95

46:                                               ; preds = %31
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %49 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @memcpy(i8* %47, i32 %53, i32 %54)
  %56 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %57 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %56, i32 0, i32 0
  %58 = load %struct.cgroup*, %struct.cgroup** %57, align 8
  store %struct.cgroup* %58, %struct.cgroup** %5, align 8
  %59 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %60 = icmp ne %struct.cgroup* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %46
  br label %82

62:                                               ; preds = %46
  %63 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %64 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call %struct.dentry* @rcu_dereference(%struct.TYPE_6__* %65)
  store %struct.dentry* %66, %struct.dentry** %9, align 8
  %67 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %68 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %67, i32 0, i32 0
  %69 = load %struct.cgroup*, %struct.cgroup** %68, align 8
  %70 = icmp ne %struct.cgroup* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %31

72:                                               ; preds = %62
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @ENAMETOOLONG, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %95

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  store i8 47, i8* %81, align 1
  br label %31

82:                                               ; preds = %61
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8*, i8** %8, align 8
  %90 = ptrtoint i8* %88 to i64
  %91 = ptrtoint i8* %89 to i64
  %92 = sub i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memmove(i8* %83, i8* %84, i32 %93)
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %82, %77, %43, %21
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.dentry* @rcu_dereference(%struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
