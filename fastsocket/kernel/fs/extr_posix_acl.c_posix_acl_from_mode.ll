; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_posix_acl.c_posix_acl_from_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_posix_acl.c_posix_acl_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ACL_USER_OBJ = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i8* null, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@ACL_OTHER = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @posix_acl_from_mode(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.posix_acl* @posix_acl_alloc(i32 3, i32 %7)
  store %struct.posix_acl* %8, %struct.posix_acl** %6, align 8
  %9 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %10 = icmp ne %struct.posix_acl* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.posix_acl* @ERR_PTR(i32 %13)
  store %struct.posix_acl* %14, %struct.posix_acl** %3, align 8
  br label %79

15:                                               ; preds = %2
  %16 = load i32, i32* @ACL_USER_OBJ, align 4
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %16, i32* %21, align 8
  %22 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %23 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %24 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @S_IRWXU, align 4
  %30 = and i32 %28, %29
  %31 = ashr i32 %30, 6
  %32 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %33 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 8
  %37 = load i32, i32* @ACL_GROUP_OBJ, align 4
  %38 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %39 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %37, i32* %42, align 8
  %43 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %44 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %45 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %43, i8** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @S_IRWXG, align 4
  %51 = and i32 %49, %50
  %52 = ashr i32 %51, 3
  %53 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %54 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 8
  %58 = load i32, i32* @ACL_OTHER, align 4
  %59 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %60 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i32 %58, i32* %63, align 8
  %64 = load i8*, i8** @ACL_UNDEFINED_ID, align 8
  %65 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %66 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %64, i8** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @S_IRWXO, align 4
  %72 = and i32 %70, %71
  %73 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %74 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %78, %struct.posix_acl** %3, align 8
  br label %79

79:                                               ; preds = %15, %11
  %80 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %80
}

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
