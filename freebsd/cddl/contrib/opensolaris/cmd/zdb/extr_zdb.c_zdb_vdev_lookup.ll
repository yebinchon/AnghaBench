; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_vdev_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_vdev_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_4__** }

@.str = private unnamed_addr constant [3 x i8] c"s0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.TYPE_4__*, i8*)* @zdb_vdev_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %151

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strtoul(i8* %15, i8** %6, i32 10)
  store i32 %16, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %33, label %20

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 46
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %14
  br label %60

34:                                               ; preds = %28, %23, %20
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp uge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %151

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %44, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %3, align 8
  br label %151

55:                                               ; preds = %41
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = call %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %56, i8* %58)
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %3, align 8
  br label %151

60:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %61

61:                                               ; preds = %147, %60
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %150

67:                                               ; preds = %61
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %10, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %67
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call %struct.TYPE_4__* @zdb_vdev_lookup(%struct.TYPE_4__* %80, i8* %81)
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %10, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = icmp eq %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %147

86:                                               ; preds = %79
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %87, %struct.TYPE_4__** %3, align 8
  br label %151

88:                                               ; preds = %67
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @strrchr(i8* %91, i8 signext 47)
  store i8* %92, i8** %7, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i8*, i8** %7, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %98, %95
  %103 = phi i8* [ %97, %95 ], [ %101, %98 ]
  store i8* %103, i8** %7, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @strlen(i8* %109)
  %111 = sub nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %106, i64 %112
  store i8* %113, i8** %8, align 8
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = call i64 @strcmp(i8* %116, i8* %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %102
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %121, %struct.TYPE_4__** %3, align 8
  br label %151

122:                                              ; preds = %102
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 @strcmp(i8* %123, i8* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %3, align 8
  br label %151

129:                                              ; preds = %122
  %130 = load i8*, i8** %8, align 8
  %131 = call i64 @strcmp(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = ptrtoint i8* %136 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = call i64 @strncmp(i8* %134, i8* %135, i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %3, align 8
  br label %151

146:                                              ; preds = %133, %129
  br label %147

147:                                              ; preds = %146, %85
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %61

150:                                              ; preds = %61
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %151

151:                                              ; preds = %150, %144, %127, %120, %86, %55, %53, %40, %13
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %152
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
