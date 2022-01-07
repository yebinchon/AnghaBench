; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_genfs_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_services.c_security_genfs_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.genfs* }
%struct.genfs = type { %struct.ocontext*, i32, %struct.genfs* }
%struct.ocontext = type { i64*, i32*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.ocontext* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@policy_rwlock = common dso_local global i32 0, align 4
@policydb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SECINITSID_UNLABELED = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@sidtab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_genfs_sid(i8* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.genfs*, align 8
  %12 = alloca %struct.ocontext*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %29, %4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 47
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 47
  br label %27

27:                                               ; preds = %21, %15
  %28 = phi i1 [ false, %15 ], [ %26, %21 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %15

32:                                               ; preds = %27
  %33 = call i32 @read_lock(i32* @policy_rwlock)
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @unmap_class(i64 %34)
  store i64 %35, i64* %10, align 8
  %36 = load %struct.genfs*, %struct.genfs** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @policydb, i32 0, i32 0), align 8
  store %struct.genfs* %36, %struct.genfs** %11, align 8
  br label %37

37:                                               ; preds = %50, %32
  %38 = load %struct.genfs*, %struct.genfs** %11, align 8
  %39 = icmp ne %struct.genfs* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.genfs*, %struct.genfs** %11, align 8
  %43 = getelementptr inbounds %struct.genfs, %struct.genfs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strcmp(i8* %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.genfs*, %struct.genfs** %11, align 8
  %52 = getelementptr inbounds %struct.genfs, %struct.genfs* %51, i32 0, i32 2
  %53 = load %struct.genfs*, %struct.genfs** %52, align 8
  store %struct.genfs* %53, %struct.genfs** %11, align 8
  br label %37

54:                                               ; preds = %48, %37
  %55 = load %struct.genfs*, %struct.genfs** %11, align 8
  %56 = icmp ne %struct.genfs* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57, %54
  %61 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* @ENOENT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %13, align 4
  br label %141

65:                                               ; preds = %57
  %66 = load %struct.genfs*, %struct.genfs** %11, align 8
  %67 = getelementptr inbounds %struct.genfs, %struct.genfs* %66, i32 0, i32 0
  %68 = load %struct.ocontext*, %struct.ocontext** %67, align 8
  store %struct.ocontext* %68, %struct.ocontext** %12, align 8
  br label %69

69:                                               ; preds = %101, %65
  %70 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %71 = icmp ne %struct.ocontext* %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %69
  %73 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %74 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @strlen(i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %79 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %86 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83, %72
  %91 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %92 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @strncmp(i32 %94, i8* %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %105

100:                                              ; preds = %90, %83
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %103 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %102, i32 0, i32 4
  %104 = load %struct.ocontext*, %struct.ocontext** %103, align 8
  store %struct.ocontext* %104, %struct.ocontext** %12, align 8
  br label %69

105:                                              ; preds = %99, %69
  %106 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %107 = icmp ne %struct.ocontext* %106, null
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @SECINITSID_UNLABELED, align 8
  %110 = load i64*, i64** %8, align 8
  store i64 %109, i64* %110, align 8
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  br label %141

113:                                              ; preds = %105
  %114 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %115 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %134, label %120

120:                                              ; preds = %113
  %121 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %122 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %126 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = call i32 @sidtab_context_to_sid(i32* @sidtab, i32* %124, i64* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %141

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %113
  %135 = load %struct.ocontext*, %struct.ocontext** %12, align 8
  %136 = getelementptr inbounds %struct.ocontext, %struct.ocontext* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %8, align 8
  store i64 %139, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %132, %108, %60
  %142 = call i32 @read_unlock(i32* @policy_rwlock)
  %143 = load i32, i32* %13, align 4
  ret i32 %143
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @unmap_class(i64) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @sidtab_context_to_sid(i32*, i32*, i64*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
