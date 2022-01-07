; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_dof_prune.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_dof_prune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"failed to fstat %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to allocate memory for %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"failed to read %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to open %s for writing\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"dof-data-\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"cleaned up old anonymous enabling in %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"failed to write to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dof_prune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dof_prune(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = load i32, i32* @O_RDONLY, align 4
  %14 = call i32 @open(i8* %12, i32 %13)
  store i32 %14, i32* %11, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENOENT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %16
  br label %175

24:                                               ; preds = %1
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @fstat(i32 %25, %struct.stat* %3)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = add i64 %33, 1
  %35 = call i8* @malloc(i64 %34)
  store i8* %35, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @read(i32 %41, i8* %42, i64 %43)
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 0, i8* %53, align 1
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i8*, i8** %2, align 8
  %57 = load i32, i32* @O_WRONLY, align 4
  %58 = load i32, i32* @O_TRUNC, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @open(i8* %56, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %50
  %66 = call i64 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i64 %66, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %67

67:                                               ; preds = %146, %65
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %4, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %149

71:                                               ; preds = %67
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i64, i64* %8, align 8
  %76 = call i64 @strncmp(i8* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %146

79:                                               ; preds = %71
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %5, align 8
  %85 = sub i64 %84, 1
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 10
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %146

91:                                               ; preds = %82, %79
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8*, i8** %2, align 8
  %97 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = load i8*, i8** %9, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %7, align 8
  %109 = sub i64 %107, %108
  %110 = call i64 @write(i32 %103, i8* %106, i64 %109)
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %7, align 8
  %113 = sub i64 %111, %112
  %114 = icmp ne i64 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i8*, i8** %2, align 8
  %117 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %102
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i64, i64* %5, align 8
  store i64 %120, i64* %6, align 8
  br label %121

121:                                              ; preds = %135, %119
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* %4, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i8*, i8** %9, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 10
  br label %132

132:                                              ; preds = %125, %121
  %133 = phi i1 [ false, %121 ], [ %131, %125 ]
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %121

138:                                              ; preds = %132
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %7, align 8
  %141 = load i64, i64* %4, align 8
  %142 = icmp uge i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %149

144:                                              ; preds = %138
  %145 = load i64, i64* %6, align 8
  store i64 %145, i64* %5, align 8
  br label %146

146:                                              ; preds = %144, %90, %78
  %147 = load i64, i64* %5, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %5, align 8
  br label %67

149:                                              ; preds = %143, %67
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %4, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i32, i32* %11, align 4
  %155 = load i8*, i8** %9, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i64, i64* %4, align 8
  %159 = load i64, i64* %7, align 8
  %160 = sub i64 %158, %159
  %161 = call i64 @write(i32 %154, i8* %157, i64 %160)
  %162 = load i64, i64* %4, align 8
  %163 = load i64, i64* %7, align 8
  %164 = sub i64 %162, %163
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %153
  %167 = load i8*, i8** %2, align 8
  %168 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %166, %153
  br label %170

170:                                              ; preds = %169, %149
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @close(i32 %171)
  %173 = load i8*, i8** %9, align 8
  %174 = call i32 @free(i8* %173)
  br label %175

175:                                              ; preds = %170, %23
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @read(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
