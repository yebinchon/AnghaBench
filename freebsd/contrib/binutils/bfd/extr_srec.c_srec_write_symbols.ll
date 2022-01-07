; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_write_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_srec.c_srec_write_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8* }
%struct.TYPE_15__ = type { i32, i8*, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"$$ \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"$$ \0D\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @srec_write_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srec_write_symbols(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca [43 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = call i32 @bfd_get_symcount(%struct.TYPE_14__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %160

15:                                               ; preds = %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = call %struct.TYPE_15__** @bfd_get_outsymbols(%struct.TYPE_14__* %16)
  store %struct.TYPE_15__** %17, %struct.TYPE_15__*** %7, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3, %struct.TYPE_14__* %22)
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %39, label %25

25:                                               ; preds = %15
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = call i32 @bfd_bwrite(i8* %28, i64 %29, %struct.TYPE_14__* %30)
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 2, %struct.TYPE_14__* %36)
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %25, %15
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %2, align 4
  br label %162

41:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %150, %41
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %153

46:                                               ; preds = %42
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %7, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %47, i64 %49
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %8, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %54 = call i32 @bfd_is_local_label(%struct.TYPE_14__* %52, %struct.TYPE_15__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %149, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BSF_DEBUGGING, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %149

63:                                               ; preds = %56
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strlen(i8* %66)
  store i64 %67, i64* %6, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %69 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 2, %struct.TYPE_14__* %68)
  %70 = icmp ne i32 %69, 2
  br i1 %70, label %81, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = call i32 @bfd_bwrite(i8* %74, i64 %75, %struct.TYPE_14__* %76)
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %71, %63
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %2, align 4
  br label %162

83:                                               ; preds = %71
  %84 = getelementptr inbounds [43 x i8], [43 x i8]* %9, i64 0, i64 0
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %88, %95
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %96, %101
  %103 = call i32 @sprintf_vma(i8* %85, i64 %102)
  %104 = getelementptr inbounds [43 x i8], [43 x i8]* %9, i64 0, i64 0
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  store i8* %105, i8** %10, align 8
  br label %106

106:                                              ; preds = %120, %83
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 48
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %112, %106
  %119 = phi i1 [ false, %106 ], [ %117, %112 ]
  br i1 %119, label %120, label %123

120:                                              ; preds = %118
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  br label %106

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = call i64 @strlen(i8* %124)
  store i64 %125, i64* %6, align 8
  %126 = load i8*, i8** %10, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 13, i8* %128, align 1
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %6, align 8
  %131 = add nsw i64 %130, 1
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 10, i8* %132, align 1
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 -1
  store i8* %134, i8** %10, align 8
  store i8 36, i8* %134, align 1
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %136, i8** %10, align 8
  store i8 32, i8* %136, align 1
  %137 = load i64, i64* %6, align 8
  %138 = add nsw i64 %137, 4
  store i64 %138, i64* %6, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = call i32 @bfd_bwrite(i8* %139, i64 %140, %struct.TYPE_14__* %141)
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %6, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %123
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %2, align 4
  br label %162

148:                                              ; preds = %123
  br label %149

149:                                              ; preds = %148, %56, %46
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  br label %42

153:                                              ; preds = %42
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = call i32 @bfd_bwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5, %struct.TYPE_14__* %154)
  %156 = icmp ne i32 %155, 5
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load i32, i32* @FALSE, align 4
  store i32 %158, i32* %2, align 4
  br label %162

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %1
  %161 = load i32, i32* @TRUE, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %157, %146, %81, %39
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @bfd_get_symcount(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__** @bfd_get_outsymbols(%struct.TYPE_14__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bfd_bwrite(i8*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @bfd_is_local_label(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @sprintf_vma(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
