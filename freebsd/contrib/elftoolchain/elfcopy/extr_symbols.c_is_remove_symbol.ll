; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_is_remove_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_symbols.c_is_remove_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64*, i64, i32, i32*, i32* }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_LORESERVE = common dso_local global i64 0, align 8
@SYMOP_KEEP = common dso_local global i32 0, align 4
@STRIP_ALL = common dso_local global i64 0, align 8
@SYMOP_STRIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"not stripping symbol `%s' because it is named in a relocation\00", align 1
@STRIP_UNNEEDED = common dso_local global i64 0, align 8
@DISCARD_LOCAL = common dso_local global i32 0, align 4
@DISCARD_LLABEL = common dso_local global i32 0, align 4
@STRIP_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfcopy*, i64, i32, %struct.TYPE_6__*, i8*)* @is_remove_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_remove_symbol(%struct.elfcopy* %0, i64 %1, i32 %2, %struct.TYPE_6__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.elfcopy*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store %struct.elfcopy* %0, %struct.elfcopy** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 5
  %19 = load i64, i64* @SHN_UNDEF, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 6
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 7
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = call i32 @memcmp(%struct.TYPE_6__* %26, %struct.TYPE_6__* %12, i32 40)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %174

30:                                               ; preds = %25, %5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SHN_UNDEF, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SHN_LORESERVE, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %44 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %174

53:                                               ; preds = %42, %36, %30
  %54 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* @SYMOP_KEEP, align 4
  %57 = call i32* @lookup_symop_list(%struct.elfcopy* %54, i8* %55, i32 %56)
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 0, i32* %6, align 4
  br label %174

60:                                               ; preds = %53
  %61 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %62 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @STRIP_ALL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 1, i32* %6, align 4
  br label %174

67:                                               ; preds = %60
  %68 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %69 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @mark_reloc_symbols(%struct.elfcopy* %73, i64 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %78 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @mark_section_group_symbols(%struct.elfcopy* %82, i64 %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @SYMOP_STRIP, align 4
  %89 = call i32* @lookup_symop_list(%struct.elfcopy* %86, i8* %87, i32 %88)
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %93 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @BIT_ISSET(i32* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %99)
  store i32 0, i32* %6, align 4
  br label %174

101:                                              ; preds = %91
  store i32 1, i32* %6, align 4
  br label %174

102:                                              ; preds = %85
  %103 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %106 = call i64 @is_needed_symbol(%struct.elfcopy* %103, i32 %104, %struct.TYPE_6__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %174

109:                                              ; preds = %102
  %110 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %111 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @STRIP_UNNEEDED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  br label %174

116:                                              ; preds = %109
  %117 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %118 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @DISCARD_LOCAL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @is_local_symbol(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i64 @is_debug_symbol(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %129
  store i32 1, i32* %6, align 4
  br label %174

136:                                              ; preds = %129, %123, %116
  %137 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %138 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @DISCARD_LLABEL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %136
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @is_local_symbol(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %143
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @is_debug_symbol(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load i8*, i8** %11, align 8
  %157 = call i64 @is_local_label(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 1, i32* %6, align 4
  br label %174

160:                                              ; preds = %155, %149, %143, %136
  %161 = load %struct.elfcopy*, %struct.elfcopy** %7, align 8
  %162 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @STRIP_DEBUG, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %160
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @is_debug_symbol(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  store i32 1, i32* %6, align 4
  br label %174

173:                                              ; preds = %166, %160
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %173, %172, %159, %135, %115, %108, %101, %98, %66, %59, %52, %29
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local i32 @memcmp(%struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32* @lookup_symop_list(%struct.elfcopy*, i8*, i32) #1

declare dso_local i32 @mark_reloc_symbols(%struct.elfcopy*, i64) #1

declare dso_local i32 @mark_section_group_symbols(%struct.elfcopy*, i64) #1

declare dso_local i64 @BIT_ISSET(i32*, i32) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @is_needed_symbol(%struct.elfcopy*, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @is_local_symbol(i32) #1

declare dso_local i64 @is_debug_symbol(i32) #1

declare dso_local i64 @is_local_label(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
