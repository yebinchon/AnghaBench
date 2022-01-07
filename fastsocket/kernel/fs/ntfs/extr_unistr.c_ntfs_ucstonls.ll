; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_unistr.c_ntfs_ucstonls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_unistr.c_ntfs_ucstonls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.nls_table* }
%struct.nls_table = type { i32 (i32, i8*, i32)*, i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Received NULL pointer.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [136 x i8] c"Unicode name contains characters that cannot be converted to character set %s.  You might want to try to use the mount option nls=utf8.\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to allocate name!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_ucstonls(%struct.TYPE_3__* %0, i32* %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nls_table*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.nls_table*, %struct.nls_table** %20, align 8
  store %struct.nls_table* %21, %struct.nls_table** %12, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %130

24:                                               ; preds = %5
  %25 = load i8**, i8*** %10, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %13, align 8
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %17, align 4
  br label %137

36:                                               ; preds = %30, %24
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @GFP_NOFS, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %39
  br label %162

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %36
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %119, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %122

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %103, %56
  %58 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %59 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %58, i32 0, i32 0
  %60 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %59, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le16_to_cpu(i32 %65)
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i32 %60(i32 %66, i8* %70, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %57
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %119

81:                                               ; preds = %57
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  br label %122

85:                                               ; preds = %81
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @ENAMETOOLONG, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  %92 = load i8**, i8*** %10, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %91, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 64
  %98 = and i32 %97, -64
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = call i8* @kmalloc(i32 %98, i32 %99)
  store i8* %100, i8** %18, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load i8*, i8** %18, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @memcpy(i8* %104, i8* %105, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, 64
  %110 = and i32 %109, -64
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = call i32 @kfree(i8* %112)
  %114 = load i8*, i8** %18, align 8
  store i8* %114, i8** %13, align 8
  br label %57

115:                                              ; preds = %95
  br label %116

116:                                              ; preds = %115, %90, %85
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  br label %137

119:                                              ; preds = %77
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %52

122:                                              ; preds = %84, %52
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %13, align 8
  %128 = load i8**, i8*** %10, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  br label %169

130:                                              ; preds = %5
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32, i8*, ...) @ntfs_error(i32 %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %6, align 4
  br label %169

137:                                              ; preds = %118, %33
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  %142 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32, i8*, ...) @ntfs_error(i32 %140, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  %145 = load i8*, i8** %13, align 8
  %146 = load i8**, i8*** %10, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = icmp ne i8* %145, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %137
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @kfree(i8* %150)
  br label %152

152:                                              ; preds = %149, %137
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* @ENAMETOOLONG, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp ne i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @EILSEQ, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %17, align 4
  br label %160

160:                                              ; preds = %157, %152
  %161 = load i32, i32* %17, align 4
  store i32 %161, i32* %6, align 4
  br label %169

162:                                              ; preds = %49
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (i32, i8*, ...) @ntfs_error(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %162, %160, %130, %122
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
