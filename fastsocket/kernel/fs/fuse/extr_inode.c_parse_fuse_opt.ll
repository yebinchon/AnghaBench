; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_parse_fuse_opt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_inode.c_parse_fuse_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_mount_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FUSE_DEFAULT_BLKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@tokens = common dso_local global i32 0, align 4
@FUSE_DEFAULT_PERMISSIONS = common dso_local global i32 0, align 4
@FUSE_ALLOW_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.fuse_mount_data*, i32)* @parse_fuse_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fuse_opt(i8* %0, %struct.fuse_mount_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fuse_mount_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.fuse_mount_data* %1, %struct.fuse_mount_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %15 = call i32 @memset(%struct.fuse_mount_data* %14, i32 0, i32 44)
  %16 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %17 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 4
  %18 = load i32, i32* @FUSE_DEFAULT_BLKSIZE, align 4
  %19 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %20 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %125, %122, %3
  %22 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %126

24:                                               ; preds = %21
  %25 = load i32, i32* @MAX_OPT_ARGS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 2, i32* %13, align 4
  br label %122

33:                                               ; preds = %24
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* @tokens, align 4
  %36 = call i32 @match_token(i8* %34, i32 %35, i32* %28)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %120 [
    i32 132, label %38
    i32 129, label %49
    i32 128, label %65
    i32 131, label %76
    i32 133, label %87
    i32 135, label %93
    i32 130, label %99
    i32 134, label %108
  ]

38:                                               ; preds = %33
  %39 = getelementptr inbounds i32, i32* %28, i64 0
  %40 = call i32 @match_int(i32* %39, i32* %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

43:                                               ; preds = %38
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %46 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %48 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  br label %121

49:                                               ; preds = %33
  %50 = getelementptr inbounds i32, i32* %28, i64 0
  %51 = call i32 @match_octal(i32* %50, i32* %10)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @fuse_valid_type(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %62 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %64 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %63, i32 0, i32 5
  store i32 1, i32* %64, align 4
  br label %121

65:                                               ; preds = %33
  %66 = getelementptr inbounds i32, i32* %28, i64 0
  %67 = call i32 @match_int(i32* %66, i32* %10)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

70:                                               ; preds = %65
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %73 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %75 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %74, i32 0, i32 7
  store i32 1, i32* %75, align 4
  br label %121

76:                                               ; preds = %33
  %77 = getelementptr inbounds i32, i32* %28, i64 0
  %78 = call i32 @match_int(i32* %77, i32* %10)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

81:                                               ; preds = %76
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %84 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %86 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %85, i32 0, i32 9
  store i32 1, i32* %86, align 4
  br label %121

87:                                               ; preds = %33
  %88 = load i32, i32* @FUSE_DEFAULT_PERMISSIONS, align 4
  %89 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %90 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %121

93:                                               ; preds = %33
  %94 = load i32, i32* @FUSE_ALLOW_OTHER, align 4
  %95 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %96 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %121

99:                                               ; preds = %33
  %100 = getelementptr inbounds i32, i32* %28, i64 0
  %101 = call i32 @match_int(i32* %100, i32* %10)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %107 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %121

108:                                              ; preds = %33
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = getelementptr inbounds i32, i32* %28, i64 0
  %113 = call i32 @match_int(i32* %112, i32* %10)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111, %108
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %119 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %121

120:                                              ; preds = %33
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %122

121:                                              ; preds = %116, %104, %93, %87, %81, %70, %59, %43
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %121, %120, %115, %103, %80, %69, %58, %53, %42, %32
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i32, i32* %13, align 4
  switch i32 %124, label %150 [
    i32 0, label %125
    i32 2, label %21
    i32 1, label %148
  ]

125:                                              ; preds = %122
  br label %21

126:                                              ; preds = %21
  %127 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %128 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %133 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %138 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.fuse_mount_data*, %struct.fuse_mount_data** %6, align 8
  %143 = getelementptr inbounds %struct.fuse_mount_data, %struct.fuse_mount_data* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141, %136, %131, %126
  store i32 0, i32* %4, align 4
  br label %148

147:                                              ; preds = %141
  store i32 1, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %146, %122
  %149 = load i32, i32* %4, align 4
  ret i32 %149

150:                                              ; preds = %122
  unreachable
}

declare dso_local i32 @memset(%struct.fuse_mount_data*, i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @match_int(i32*, i32*) #1

declare dso_local i32 @match_octal(i32*, i32*) #1

declare dso_local i32 @fuse_valid_type(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
